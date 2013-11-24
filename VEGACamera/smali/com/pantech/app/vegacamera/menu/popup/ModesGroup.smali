.class public Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "ModesGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;,
        Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/vegacamera/menu/AbstractPopupList;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ID_BUTTON_ITEM_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_BUTTON_ITEM_TITLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_HELP_TIP_IMAGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_HELP_TIP_TEXT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_HSCROLL_ITEM_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_HSCROLL_ITEM_SELECTED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_HSCROLL_ITEM_TITLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_H_SCROLL_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LAYOUT_BUTTON_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LAYOUT_HSCROLL_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LIST_VIEW_ARROW_LEFT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LIST_VIEW_ARROW_RIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MENU_POPUP_CLOSE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MENU_POPUP_GRID_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MENU_POPUP_LIST_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_MENU_POPUP_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_POPUP_ARROW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_PREFIX_TITLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_SEPERATOR_LINE_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_BUTTON_ITEM_BTN_SELECTOR_LEFT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_BUTTON_ITEM_BTN_SELECTOR_MEDIUM:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_BUTTON_ITEM_BTN_SELECTOR_RIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_HSCROLL_ITEM_BTN_SELECTED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_HSCROLL_ITEM_BTN_SELECTOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_BUTTON_LIST_ITEM_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_BUTTON_LIST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_HELP_INSERT_LIST_POPUP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_HELP_INSERT_POPUP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_HSCROLL_LIST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_ITEM_BUTTON_LIST_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_ITEM_SCROLL_LIST_VIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_POPUP_GRID:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_SCROLL_LIST_ITEM_VIEW:I = 0x0

.field private static final LIST_STYLE_SCROLL:Ljava/lang/String; = "scroll_style"

.field private static final LIST_STYLE_TEXT:Ljava/lang/String; = "text_style"

.field private static final TAG:Ljava/lang/String; = "ModesGroup"

.field private static final _MENU_TYPE:Z


# instance fields
.field private hsvScroll:Landroid/widget/HorizontalScrollView;

.field private iCurrPosition:I

.field private iItemBottom:I

.field private iItemTop:I

.field private iMaxScrollx:I

.field private iOrientation:I

.field private ivArrowLeft:Landroid/view/View;

.field private ivArrowRight:Landroid/view/View;

.field private ivPopUpArrow:Landroid/view/View;

.field private ivSeperatorLine:Landroid/view/View;

.field private ivTips:Landroid/view/View;

.field private mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

.field private mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

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

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

.field private mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

.field private mSubItemInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;",
            ">;"
        }
    .end annotation
.end field

.field private rlHelpInsertListPopUp:Landroid/view/ViewGroup;

.field private rlPopUpGrid:Landroid/view/ViewGroup;

.field private sCurrentKey:Ljava/lang/String;

.field private sCurrentValue:Ljava/lang/String;

.field private sEnterKey:Ljava/lang/String;

.field private sMenuPopUpType:Ljava/lang/String;

.field private tvPrefixTitle:Landroid/view/View;

.field private tvTips:Landroid/view/View;

.field private vMenuPopUpClose:Landroid/view/View;

.field private vMenuPopUpType:Landroid/view/View;

.field private vgButtonListItemView:Landroid/view/ViewGroup;

.field private vgButtonListView:Landroid/view/ViewGroup;

.field private vgHelpInsertPopUp:Landroid/view/ViewGroup;

.field private vgPopUpGridType:Landroid/view/ViewGroup;

.field private vgPopUpListType:Landroid/view/ViewGroup;

.field private vgScrollListItemView:Landroid/view/ViewGroup;

.field private vgScrollListView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_grid_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_POPUP_GRID:I

    .line 42
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_list_popup:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HELP_INSERT_LIST_POPUP:I

    .line 43
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_popup_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HELP_INSERT_POPUP:I

    .line 45
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_arrow:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_POPUP_ARROW:I

    .line 46
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_popup_close:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_CLOSE:I

    .line 47
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_popup_type:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_TYPE:I

    .line 48
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_grid_type:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_GRID_TYPE:I

    .line 50
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_list_type:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_LIST_TYPE:I

    .line 51
    sget v0, Lcom/pantech/app/vegacamera/R$id;->prefix_title:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_PREFIX_TITLE:I

    .line 52
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_tip_image:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HELP_TIP_IMAGE:I

    .line 53
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_tip_text:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HELP_TIP_TEXT:I

    .line 56
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_list_view:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_ITEM_SCROLL_LIST_VIEW:I

    .line 57
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_list_separator_line:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_SEPERATOR_LINE_VIEW:I

    .line 58
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_list_arrow_left:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LIST_VIEW_ARROW_LEFT:I

    .line 59
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_list_arrow_right:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LIST_VIEW_ARROW_RIGHT:I

    .line 60
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_h_scroll_v:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_H_SCROLL_VIEW:I

    .line 61
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_list_item_view:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_SCROLL_LIST_ITEM_VIEW:I

    .line 63
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_help_insert_hscroll_list_item:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HSCROLL_LIST:I

    .line 64
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LAYOUT_HSCROLL_VIEW:I

    .line 65
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_item_icon:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_ICON:I

    .line 66
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_item_title:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_TITLE:I

    .line 67
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_scroll_item_selected:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_SELECTED:I

    .line 69
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_popup_help_insert_hscroll_list_selector:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_HSCROLL_ITEM_BTN_SELECTOR:I

    .line 70
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_intelligent_selected:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_HSCROLL_ITEM_BTN_SELECTED:I

    .line 73
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_button_list_view:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_ITEM_BUTTON_LIST_VIEW:I

    .line 74
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_button_list_item_view:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_BUTTON_LIST_ITEM_VIEW:I

    .line 76
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_help_insert_button_list_item:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_BUTTON_LIST:I

    .line 77
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_button_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LAYOUT_BUTTON_VIEW:I

    .line 78
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_button_item_icon:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_BUTTON_ITEM_ICON:I

    .line 79
    sget v0, Lcom/pantech/app/vegacamera/R$id;->help_insert_button_item_title:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_BUTTON_ITEM_TITLE:I

    .line 81
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_settings_list_button_left:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_BUTTON_ITEM_BTN_SELECTOR_LEFT:I

    .line 82
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_settings_list_button_medium:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_BUTTON_ITEM_BTN_SELECTOR_MEDIUM:I

    .line 83
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_settings_list_button_right:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_BUTTON_ITEM_BTN_SELECTOR_RIGHT:I

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    .line 86
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    .line 88
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 90
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemTop:I

    .line 91
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemBottom:I

    .line 92
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iOrientation:I

    .line 94
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iMaxScrollx:I

    .line 96
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sEnterKey:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    .line 103
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    .line 105
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    .line 107
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpGridType:Landroid/view/ViewGroup;

    .line 108
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlPopUpGrid:Landroid/view/ViewGroup;

    .line 110
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpListType:Landroid/view/ViewGroup;

    .line 111
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivPopUpArrow:Landroid/view/View;

    .line 112
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpClose:Landroid/view/View;

    .line 113
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    .line 114
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivTips:Landroid/view/View;

    .line 115
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvPrefixTitle:Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvTips:Landroid/view/View;

    .line 117
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivSeperatorLine:Landroid/view/View;

    .line 118
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowRight:Landroid/view/View;

    .line 121
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlHelpInsertListPopUp:Landroid/view/ViewGroup;

    .line 122
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgHelpInsertPopUp:Landroid/view/ViewGroup;

    .line 124
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListView:Landroid/view/ViewGroup;

    .line 125
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    .line 126
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    .line 128
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListView:Landroid/view/ViewGroup;

    .line 129
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    .line 150
    return-void
.end method

.method private _AddListView()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 692
    const/4 v9, -0x1

    .line 693
    .local v9, layoutID:I
    const/4 v5, -0x1

    .line 694
    .local v5, iconID:I
    const/4 v6, -0x1

    .line 696
    .local v6, iconRes:I
    const/4 v2, -0x1

    .line 697
    .local v2, iLayoutWidth:I
    const/4 v4, -0x1

    .line 698
    .local v4, iPerViewWidth:I
    const/4 v3, -0x1

    .line 700
    .local v3, iPerViewHeight:I
    const/4 v7, 0x0

    .line 702
    .local v7, iconTitle:Ljava/lang/String;
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    instance-of v10, v10, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v10, :cond_2

    .line 703
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 706
    .local v0, entryValues:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 708
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v0, v12

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 709
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v11

    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v12, "value"

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 717
    :cond_0
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    .line 718
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    .line 720
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text_style"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_help_insert_button_list_width:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    .line 722
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int v4, v2, v10

    .line 723
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_help_insert_button_list_height:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 726
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_3

    .line 794
    .end local v0           #entryValues:[Ljava/lang/CharSequence;
    .end local v1           #i:I
    :cond_2
    return-void

    .line 727
    .restart local v0       #entryValues:[Ljava/lang/CharSequence;
    .restart local v1       #i:I
    :cond_3
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v10

    const-string v11, "scroll_style"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 729
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 730
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 733
    :cond_4
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "image"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 734
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "image"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 737
    :cond_5
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "text"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 738
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "text"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 741
    :cond_6
    sget v9, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HSCROLL_LIST:I

    .line 743
    if-eq v9, v13, :cond_7

    .line 744
    new-instance v8, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, p0, v10, v9}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;Landroid/content/Context;I)V

    .line 746
    .local v8, item:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;
    const-string v10, "scroll_style"

    invoke-virtual {v8, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->SetViewStyle(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v8, v6, v7, v5}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->SetViews(ILjava/lang/String;I)V

    .line 748
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemHScrollLayout()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemHScrollLayout()Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_HScrollItemSetBackGround(Landroid/view/View;I)V

    .line 751
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemHScrollTitleView()Landroid/widget/TextView;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentHScrollItemTitleSetTextColor(Landroid/widget/TextView;I)V

    .line 752
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemHScrollIconView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentHScrollItemIconSetImage(Landroid/widget/ImageView;I)V

    .line 753
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemHScrollSelected()Landroid/widget/ImageView;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentHScrollItemSelectd(Landroid/widget/ImageView;I)V

    .line 755
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    if-eqz v10, :cond_7

    .line 756
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 726
    .end local v8           #item:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 760
    :cond_8
    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text_style"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 762
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 763
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 766
    :cond_9
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "text"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 767
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "text"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 770
    :cond_a
    sget v9, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_BUTTON_LIST:I

    .line 772
    if-eq v9, v13, :cond_7

    .line 773
    new-instance v8, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, p0, v10, v9}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;Landroid/content/Context;I)V

    .line 775
    .restart local v8       #item:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;
    const-string v10, "text_style"

    invoke-virtual {v8, v10}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->SetViewStyle(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v8, v6, v7, v5}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->SetViews(ILjava/lang/String;I)V

    .line 777
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemButtonLayout()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    invoke-virtual {v8, v4}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->SetViewWidth(I)V

    .line 779
    invoke-virtual {v8, v3}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->SetViewHeight(I)V

    .line 781
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v10

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemButtonLayout()Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_ButtonItemSetBackGroud(Landroid/view/View;I)V

    .line 784
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentButtonItemSelectd(Landroid/view/View;I)V

    .line 786
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    if-eqz v10, :cond_7

    .line 787
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method private _ButtonItemSetBackGroud(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 849
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_1

    .line 850
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_BUTTON_ITEM_BTN_SELECTOR_LEFT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 857
    :goto_0
    if-eqz p1, :cond_0

    .line 858
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 860
    :cond_0
    return-void

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_2

    .line 852
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_BUTTON_ITEM_BTN_SELECTOR_RIGHT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 853
    goto :goto_0

    .line 854
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_BUTTON_ITEM_BTN_SELECTOR_MEDIUM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private _ChangeMenuPopUpType()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v1, "pref_modes_menu_type"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    const-string v1, "grid"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 894
    const-string v0, "grid"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    .line 899
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_SetPopUpType()V

    .line 900
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    const-string v1, "grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v1, "pref_modes_menu_type"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 897
    const-string v0, "list"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    goto :goto_0
.end method

.method private _CurrentButtonItemSelectd(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "pos"

    .prologue
    .line 863
    if-eqz p1, :cond_0

    .line 864
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private _CurrentHScrollItemIconSetImage(Landroid/widget/ImageView;I)V
    .locals 4
    .parameter "iv"
    .parameter "pos"

    .prologue
    .line 817
    const/4 v0, -0x1

    .line 819
    .local v0, icon:I
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "set_image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

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

    .line 829
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 830
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    :cond_1
    return-void

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

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

.method private _CurrentHScrollItemSelectd(Landroid/widget/ImageView;I)V
    .locals 4
    .parameter "iv"
    .parameter "pos"

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 837
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_HSCROLL_ITEM_BTN_SELECTED:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 841
    :cond_0
    if-eqz p1, :cond_1

    .line 842
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 844
    :cond_1
    return-void
.end method

.method private _CurrentHScrollItemTitleSetTextColor(Landroid/widget/TextView;I)V
    .locals 4
    .parameter "tv"
    .parameter "pos"

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_popup_help_insert_hscroll_list_item_text_color_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 807
    .local v0, color:I
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_popup_help_insert_hscroll_list_item_text_color_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 811
    :cond_0
    if-eqz p1, :cond_1

    .line 812
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    :cond_1
    return-void
.end method

.method private _GetCurrentIndex()I
    .locals 3

    .prologue
    .line 379
    const/4 v0, -0x1

    .line 381
    .local v0, index:I
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    .line 383
    .local v1, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 385
    return v0
.end method

.method private _GetHelpTip()Ljava/lang/String;
    .locals 4

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, helpTexts:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 419
    .local v2, text:Ljava/lang/String;
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    .line 421
    .local v1, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    instance-of v3, v1, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 422
    check-cast v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetHelpTips()[Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetCurrentIndex()I

    move-result v3

    aget-object v2, v0, v3

    .line 431
    .end local v1           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_0
    :goto_0
    return-object v2

    .line 427
    .restart local v1       #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_1
    check-cast v1, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    .end local v1           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetHelpTip()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private _GetHelpTipImage()I
    .locals 5

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, helpBgs:[I
    const/4 v0, 0x0

    .line 395
    .local v0, helpBg:I
    const/4 v2, -0x1

    .line 397
    .local v2, index:I
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    .line 399
    .local v3, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    instance-of v4, v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 400
    check-cast v4, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetHelpBgIds()[I

    move-result-object v1

    .line 402
    if-eqz v1, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetCurrentIndex()I

    move-result v4

    aget v2, v1, v4

    .line 412
    .end local v3           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_0
    :goto_0
    return v2

    .line 405
    .restart local v3       #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_1
    check-cast v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    .end local v3           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetHelpBgId()I

    move-result v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    move v2, v0

    goto :goto_0
.end method

.method private _GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;
    .locals 1
    .parameter "positon"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method private _HScrollItemSetBackGround(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->IMAGE_HSCROLL_ITEM_BTN_SELECTOR:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 800
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 802
    :cond_0
    return-void
.end method

.method private _HScrollViewInit(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 336
    if-eqz p1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 344
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;-><init>(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 351
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;-><init>(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    :goto_0
    return-void

    .line 370
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 373
    .restart local v0       #vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 374
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private _InitHelpInsertItem()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 435
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlHelpInsertListPopUp:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvPrefixTitle:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetHelpTipImage()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 440
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivTips:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetHelpTipImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetHelpTip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvTips:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetHelpTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :goto_1
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivTips:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvTips:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private _InitLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x2

    .line 243
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivPopUpArrow:Landroid/view/View;

    if-nez v2, :cond_0

    .line 244
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_POPUP_ARROW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivPopUpArrow:Landroid/view/View;

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_arrow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 248
    .local v0, _ArrowWH:I
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemTop:I

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemBottom:I

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 249
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivPopUpArrow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .end local v0           #_ArrowWH:I
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpClose:Landroid/view/View;

    if-nez v2, :cond_1

    .line 252
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_CLOSE:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpClose:Landroid/view/View;

    .line 253
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpClose:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpClose:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    if-nez v2, :cond_2

    .line 257
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_TYPE:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    .line 258
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlPopUpGrid:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    .line 262
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_POPUP_GRID:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlPopUpGrid:Landroid/view/ViewGroup;

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpGridType:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    .line 265
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_GRID_TYPE:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpGridType:Landroid/view/ViewGroup;

    .line 267
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpListType:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 268
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_LIST_TYPE:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpListType:Landroid/view/ViewGroup;

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlHelpInsertListPopUp:Landroid/view/ViewGroup;

    if-nez v2, :cond_6

    .line 271
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HELP_INSERT_LIST_POPUP:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlHelpInsertListPopUp:Landroid/view/ViewGroup;

    .line 273
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgHelpInsertPopUp:Landroid/view/ViewGroup;

    if-nez v2, :cond_7

    .line 274
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HELP_INSERT_POPUP:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgHelpInsertPopUp:Landroid/view/ViewGroup;

    .line 275
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgHelpInsertPopUp:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListView:Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    .line 278
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_ITEM_SCROLL_LIST_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListView:Landroid/view/ViewGroup;

    .line 280
    :cond_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    if-nez v2, :cond_9

    .line 281
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_SCROLL_LIST_ITEM_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    .line 283
    :cond_9
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListView:Landroid/view/ViewGroup;

    if-nez v2, :cond_a

    .line 284
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_ITEM_BUTTON_LIST_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListView:Landroid/view/ViewGroup;

    .line 286
    :cond_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    if-nez v2, :cond_b

    .line 287
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_BUTTON_LIST_ITEM_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    .line 289
    :cond_b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvPrefixTitle:Landroid/view/View;

    if-nez v2, :cond_c

    .line 290
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_PREFIX_TITLE:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvPrefixTitle:Landroid/view/View;

    .line 292
    :cond_c
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivTips:Landroid/view/View;

    if-nez v2, :cond_d

    .line 293
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HELP_TIP_IMAGE:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivTips:Landroid/view/View;

    .line 295
    :cond_d
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvTips:Landroid/view/View;

    if-nez v2, :cond_e

    .line 296
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HELP_TIP_TEXT:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->tvTips:Landroid/view/View;

    .line 298
    :cond_e
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivSeperatorLine:Landroid/view/View;

    if-nez v2, :cond_f

    .line 299
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_SEPERATOR_LINE_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivSeperatorLine:Landroid/view/View;

    .line 301
    :cond_f
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;

    if-nez v2, :cond_10

    .line 302
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LIST_VIEW_ARROW_LEFT:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;

    .line 304
    :cond_10
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowRight:Landroid/view/View;

    if-nez v2, :cond_11

    .line 305
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LIST_VIEW_ARROW_RIGHT:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowRight:Landroid/view/View;

    .line 307
    :cond_11
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    if-nez v2, :cond_12

    .line 308
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_H_SCROLL_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    .line 310
    :cond_12
    return-void
.end method

.method private _ListGetData()Ljava/util/ArrayList;
    .locals 8
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
    .line 654
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    .line 656
    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 657
    .local v0, entries:[Ljava/lang/CharSequence;
    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 658
    .local v1, entryValues:[Ljava/lang/CharSequence;
    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetItemIconIds()[I

    move-result-object v3

    .line 659
    .local v3, iconIds:[I
    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetItemSetIconIds()[I

    move-result-object v4

    .line 661
    .local v4, iconSetIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v0

    if-lt v2, v6, :cond_0

    .line 674
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    return-object v6

    .line 662
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 663
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    .line 664
    const-string v6, "image"

    aget v7, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_1
    if-eqz v4, :cond_2

    .line 667
    const-string v6, "set_image"

    aget v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_2
    const-string v6, "text"

    aget-object v7, v0, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v6, "value"

    aget-object v7, v1, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v6, "id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private _SetListViewStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 678
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scroll_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 680
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_HScrollViewInit(Z)V

    .line 681
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 689
    :goto_0
    return-void

    .line 682
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private _SetNormalMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValueIndex(I)V

    .line 454
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    .line 456
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    .line 457
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 462
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 463
    return-void
.end method

.method private _SetPopUpType()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpListType:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgPopUpGridType:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 333
    return-void
.end method

.method private _UpdateListView()V
    .locals 3

    .prologue
    .line 873
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    instance-of v1, v1, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v1, :cond_0

    .line 874
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scroll_style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 889
    .end local v0           #i:I
    :cond_0
    return-void

    .line 877
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_TITLE:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 876
    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentHScrollItemTitleSetTextColor(Landroid/widget/TextView;I)V

    .line 879
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_ICON:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 878
    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentHScrollItemIconSetImage(Landroid/widget/ImageView;I)V

    .line 881
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_SELECTED:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 880
    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentHScrollItemSelectd(Landroid/widget/ImageView;I)V

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    .end local v0           #i:I
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetListStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text_style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 885
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CurrentButtonItemSelectd(Landroid/view/View;I)V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private _UpdateModeGroupValue()V
    .locals 6

    .prologue
    .line 466
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 468
    .local v0, count:I
    const-string v3, "ModesGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] sCurrentKey = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    const-string v4, "pref_mode_normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_SetNormalMode()V

    .line 475
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 489
    return-void

    .line 476
    :cond_1
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 478
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 479
    if-eqz v2, :cond_2

    .line 480
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    .line 475
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_3
    if-eqz v2, :cond_2

    .line 485
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 492
    const-string v0, "ModesGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] _WritePreferenceValue() key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v1, "pref_mode_group"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    const-string v1, "pref_mode_group"

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;->OnUpdateGroupTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    .line 499
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_UpdateModeGroupValue()V

    .line 502
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LAYOUT_HSCROLL_VIEW:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_ICON:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)I
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iMaxScrollx:I

    return v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowRight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_TITLE:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_HSCROLL_ITEM_SELECTED:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_LAYOUT_BUTTON_VIEW:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_BUTTON_ITEM_ICON:I

    return v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_BUTTON_ITEM_TITLE:I

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iMaxScrollx:I

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;)V
    .locals 11
    .parameter "group"
    .parameter "keys"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 160
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->GetSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_modes_menu_type"

    .line 161
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/pantech/app/vegacamera/R$string;->pref_modes_menu_type_default:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    .line 163
    const-string v4, "ModesGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MenuController] modes menu type is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sMenuPopUpType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->GetSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_mode_group"

    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/pantech/app/vegacamera/R$string;->pref_mode_group_default:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sEnterKey:Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sEnterKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    .line 172
    const/4 v1, -0x1

    .line 175
    .local v1, currIdx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-lt v2, v4, :cond_3

    .line 187
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    .local v0, count:I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_5

    .line 195
    new-instance v4, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_modes_group_item_row:I

    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    .line 197
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    sget v5, Lcom/pantech/app/vegacamera/R$drawable;->menu_popup_list_view_selector:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelector(I)V

    .line 203
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 204
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 206
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 209
    new-instance v4, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_modes_group_grid_item_row:I

    iget-object v7, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    .line 210
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPopUpGrid:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/GridView;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPopUpGrid:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mPopUpGrid:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setSoundEffectsEnabled(Z)V

    .line 214
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 215
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    sget v5, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_grid_nor:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedRes(I)V

    .line 217
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_UpdateModeGroupValue()V

    .line 218
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_InitLayout()V

    .line 219
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_SetPopUpType()V

    .line 221
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 229
    iput-object v10, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    .line 233
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    .line 236
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_SetListViewStyle()V

    .line 238
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_AddListView()V

    .line 239
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_InitHelpInsertItem()V

    .line 240
    return-void

    .line 176
    .end local v0           #count:I
    :cond_3
    aget-object v4, p2, v2

    invoke-virtual {p1, v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    .line 177
    .local v3, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v3, :cond_4

    .line 178
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    new-instance v5, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    .line 182
    const-string v4, "ModesGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "current index = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 190
    .end local v3           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    .restart local v0       #count:I
    :cond_5
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v4, v9}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetUnchangeTitleImage(Z)V

    .line 191
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v4, v9}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetUsedTypeIcon(Z)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public varargs OverrideItems([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 549
    const-string v6, "ModesGroup"

    const-string v7, "[MenuController] OverrideItems()"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 551
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-lt v1, v6, :cond_0

    .line 561
    return-void

    .line 552
    :cond_0
    aget-object v3, p1, v1

    .line 553
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    aget-object v5, p1, v6

    .line 554
    .local v5, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 551
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 555
    :cond_1
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    .line 556
    .local v4, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->OverrideItems(Ljava/lang/String;)V

    .line 554
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    .line 146
    return-void
.end method

.method public SetItemRect(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 153
    iput p2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemTop:I

    .line 154
    iput p4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iItemBottom:I

    .line 155
    return-void
.end method

.method public _ChangeModeGItem()V
    .locals 3

    .prologue
    .line 564
    const-string v0, "ModesGroup"

    const-string v1, "[MenuController] _ChangeModeGItem()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sEnterKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    const-string v1, "pref_mode_intelligent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    const-string v1, "pref_mode_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    const-string v1, "pref_mode_video_timelapse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    const-string v1, "pref_mode_face_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    if-eqz v0, :cond_1

    .line 570
    const-string v0, "ModesGroup"

    const-string v1, "[MenuController] include sub item option"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;->OnModeMenuSubItemChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1
    :goto_0
    return-void

    .line 577
    :cond_2
    const-string v0, "ModesGroup"

    const-string v1, "[MenuController] do not working"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _CloseSubPopup()Z
    .locals 5

    .prologue
    .line 588
    const-string v3, "ModesGroup"

    const-string v4, "[MenuController] _CloseSubPopup()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 590
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 598
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 591
    :cond_0
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 592
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 593
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_CloseSubPopup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    const/4 v3, 0x1

    goto :goto_1

    .line 590
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _GetSubPopupWindow()Landroid/view/View;
    .locals 5

    .prologue
    .line 602
    const-string v3, "ModesGroup"

    const-string v4, "[MenuController] _GetSubPopupWindow()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 610
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 605
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_GetSubPopupWindow()Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    move-result-object v2

    .line 606
    .local v2, result:Landroid/view/View;
    if-nez v2, :cond_0

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _ReloadPreference()V
    .locals 5

    .prologue
    .line 619
    const-string v3, "ModesGroup"

    const-string v4, "[MenuController] _ReloadPreference()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 621
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 627
    return-void

    .line 622
    :cond_0
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 623
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 624
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_ReloadPreference()V

    .line 621
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _SetCurrPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 614
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    .line 615
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 906
    .local v1, id:I
    const-string v2, "ModesGroup"

    const-string v3, "[MenuController] coding go to on cnange menu item list action"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->LAYOUT_ID_HELP_INSERT_POPUP:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_CLOSE:I

    if-ne v1, v2, :cond_2

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    if-eqz v2, :cond_1

    .line 910
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;->OnClosePopUp()V

    .line 930
    :cond_1
    :goto_0
    return-void

    .line 912
    :cond_2
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ID_MENU_POPUP_TYPE:I

    if-eq v1, v2, :cond_1

    .line 917
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 927
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_UpdateListView()V

    .line 928
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_InitHelpInsertItem()V

    goto :goto_0

    .line 918
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 919
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 920
    const-string v2, "ModesGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController] key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 921
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 920
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentKey:Ljava/lang/String;

    .line 923
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->sCurrentValue:Ljava/lang/String;

    .line 917
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "ModesGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] onItemClick(), position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iCurrPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 509
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mGridAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 511
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    if-ne v0, p3, :cond_0

    .line 546
    :goto_0
    return-void

    .line 515
    :cond_0
    const-string v0, "ModesGroup"

    const-string v1, "[MenuController] act onItemClick()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iCurrPosition:I

    .line 519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgScrollListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vgButtonListItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mListItem:Ljava/util/ArrayList;

    .line 534
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_SetListViewStyle()V

    .line 536
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_AddListView()V

    .line 537
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_InitHelpInsertItem()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->SetDisableRotation(Z)V

    .line 649
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onMeasure(II)V

    .line 650
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 631
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iOrientation:I

    .line 632
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlHelpInsertListPopUp:Landroid/view/ViewGroup;

    check-cast v3, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 633
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->rlPopUpGrid:Landroid/view/ViewGroup;

    check-cast v3, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 634
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->vMenuPopUpType:Landroid/view/View;

    check-cast v3, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOrientation(I)V

    .line 635
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 636
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 643
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetOrientation(I)V

    .line 644
    return-void

    .line 638
    :cond_0
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetPreference(I)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 639
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 640
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetOrientation(I)V

    .line 637
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
