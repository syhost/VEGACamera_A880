.class public Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "SubPopupGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;,
        Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ID_LAYOUT_ROTATE_SUB_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LAYOUT_SUB_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_SUB_ITEM_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_SUB_ITEM_SELECTED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_SUB_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_LIST_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SubPopupGroup"


# instance fields
.field private iCurrentIndex:I

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

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

.field private vgItemView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_list_vg:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->LAYOUT_LIST_VIEW:I

    .line 27
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_sub_list_item:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->LAYOUT_ID_SUB_DEPTH:I

    .line 28
    sget v0, Lcom/pantech/app/vegacamera/R$id;->sub_popup_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_LAYOUT_SUB_DEPTH:I

    .line 29
    sget v0, Lcom/pantech/app/vegacamera/R$id;->sub_popup_item_rotate_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_LAYOUT_ROTATE_SUB_DEPTH:I

    .line 30
    sget v0, Lcom/pantech/app/vegacamera/R$id;->sub_popup_item_icon:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_SUB_ITEM_ICON:I

    .line 31
    sget v0, Lcom/pantech/app/vegacamera/R$id;->sub_popup_item_selected:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_SUB_ITEM_SELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 35
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->iCurrentIndex:I

    .line 39
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;

    .line 41
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method private _InitLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 96
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 97
    sget v1, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->LAYOUT_LIST_VIEW:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    .line 100
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method private _ListGetData()Ljava/util/ArrayList;
    .locals 7
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
    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    .line 67
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 69
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 71
    .local v3, iconIds:[I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    if-eqz v5, :cond_1

    .line 72
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->getaSubItemIconIds()[I

    move-result-object v3

    .line 77
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-lt v2, v5, :cond_2

    .line 92
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    return-object v5

    .line 73
    .end local v2           #i:I
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v5, v5, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v5, :cond_0

    .line 74
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v5, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->getaSubItemIconIds()[I

    move-result-object v3

    goto :goto_0

    .line 78
    .restart local v2       #i:I
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "value"

    aget-object v6, v1, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "text"

    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    if-eqz v3, :cond_3

    .line 82
    const-string v5, "image"

    aget v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_3
    const-string v5, "id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->iCurrentIndex:I

    .line 77
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private _ShowListView()V
    .locals 6

    .prologue
    .line 107
    const/4 v2, -0x1

    .line 108
    .local v2, iconID:I
    const/4 v1, -0x1

    .line 116
    .local v1, icon:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 118
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 142
    return-void

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    :cond_2
    new-instance v3, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->LAYOUT_ID_SUB_DEPTH:I

    invoke-direct {v3, p0, v4, v5}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;-><init>(Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;Landroid/content/Context;I)V

    .line 128
    .local v3, item:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;
    invoke-virtual {v3, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->SetView(II)V

    .line 129
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->ItemLayout()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->iCurrentIndex:I

    if-ne v4, v0, :cond_3

    .line 133
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->SetSelected(Z)V

    .line 138
    :goto_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->ItemView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->SetSelected(Z)V

    goto :goto_1
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_LAYOUT_SUB_DEPTH:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_SUB_ITEM_ICON:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_SUB_ITEM_SELECTED:I

    return v0
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/ListPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 58
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    .line 60
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->_InitLayout()V

    .line 61
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->_ShowListView()V

    .line 62
    return-void
.end method

.method public _ReloadPreference()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 164
    const-string v1, "SubPopupGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick : v "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 172
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

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

    .line 167
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->iCurrentIndex:I

    .line 165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 154
    const-string v1, "SubPopupGroup"

    const-string v2, "[setOrientation]"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 160
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_LAYOUT_ROTATE_SUB_DEPTH:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->ID_LAYOUT_ROTATE_SUB_DEPTH:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSubPopupListener(Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;

    .line 53
    return-void
.end method
