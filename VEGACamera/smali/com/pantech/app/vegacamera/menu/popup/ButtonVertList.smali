.class public Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "ButtonVertList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/vegacamera/menu/AbstractPopupList;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final EXCEPT_LIST_NONE_ITEM:Ljava/lang/String; = "except_list_none_item"

.field private static final TAG:Ljava/lang/String; = "ButtonVertList"


# instance fields
.field private iCurrPosition:I

.field private iOrientation:I

.field private mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

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

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

.field private sExceptListNoneItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    .line 23
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iOrientation:I

    .line 28
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

    .line 32
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->sExceptListNoneItem:Ljava/lang/String;

    .line 42
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
    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    .line 95
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    .local v1, entryValues:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetItemIconIds()[I

    move-result-object v3

    .line 99
    .local v3, iconIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    return-object v5

    .line 100
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    .line 102
    const-string v5, "image"

    aget v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    const-string v5, "text"

    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "value"

    aget-object v6, v1, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;)V
    .locals 10
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 58
    .local v6, entryValues:[Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->sExceptListNoneItem:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->sExceptListNoneItem:Ljava/lang/String;

    const-string v1, "except_list_none_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iput v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    .line 65
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->SetValue(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    new-instance v0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_vert_list_item:I

    new-array v4, v7, [Ljava/lang/String;

    .line 77
    const-string v5, "image"

    aput-object v5, v4, v8

    const-string v5, "text"

    aput-object v5, v4, v9

    new-array v5, v7, [I

    sget v7, Lcom/pantech/app/vegacamera/R$id;->image:I

    aput v7, v5, v8

    sget v7, Lcom/pantech/app/vegacamera/R$id;->text:I

    aput v7, v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 76
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    const-string v1, "text_white_color"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->SetTextColorType(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->menu_popup_list_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setSoundEffectsEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->SetSelectedPosition(I)V

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->_ReloadPreference()V

    .line 90
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    goto/16 :goto_0
.end method

.method public SetExceptListNoneItem(Ljava/lang/String;)V
    .locals 0
    .parameter "except"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->sExceptListNoneItem:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

    .line 46
    return-void
.end method

.method public _ReloadPreference()V
    .locals 3

    .prologue
    .line 114
    const-string v1, "ButtonVertList"

    const-string v2, "[MenuController] _ReloadPreference()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v1, "ButtonVertList"

    const-string v2, "[MenuController] Invalid preference value."

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->Print()V

    goto :goto_0
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
    .line 126
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "ButtonVertList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] onItemClick(), position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iCurrPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->SetSelectedPosition(I)V

    .line 130
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    if-ne v0, p3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "ButtonVertList"

    const-string v1, "[MenuController] act onItemClick()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iCurrPosition:I

    .line 138
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->SetValue(Ljava/lang/String;)V

    .line 140
    const-string v0, "ButtonVertList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] onItemClick(), key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->SetDisableRotation(Z)V

    .line 157
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onMeasure(II)V

    .line 158
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 149
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iOrientation:I

    .line 150
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->SetOrientation(I)V

    .line 152
    return-void
.end method
