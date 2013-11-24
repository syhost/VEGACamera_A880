.class public Lcom/pantech/app/vegacamera/menu/popup/TextList;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "TextList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/vegacamera/menu/AbstractPopupList;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextList"


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

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    .line 23
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iCurrPosition:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iOrientation:I

    .line 28
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;

    .line 38
    return-void
.end method

.method private _ListGetData()Ljava/util/ArrayList;
    .locals 6
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
    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    .line 68
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 71
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    return-object v4

    .line 72
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "text"

    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v4, "value"

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/TextListPreference;)V
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 45
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    .line 48
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    .line 52
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_text_list_item:I

    .line 53
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "text"

    aput-object v5, v4, v7

    .line 54
    new-array v5, v6, [I

    sget v6, Lcom/pantech/app/vegacamera/R$id;->text:I

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 50
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    const-string v1, "text_white_color"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->SetTextColorType(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->menu_popup_list_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setSoundEffectsEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->_ReloadPreference()V

    .line 63
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;

    .line 42
    return-void
.end method

.method public _ReloadPreference()V
    .locals 3

    .prologue
    .line 83
    const-string v1, "TextList"

    const-string v2, "[MenuController] _ReloadPreference()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v1, "TextList"

    const-string v2, "[MenuController] Invalid preference value."

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->Print()V

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
    .line 95
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "TextList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] onItemClick(), position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iCurrPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iCurrPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iCurrPosition:I

    if-ne v0, p3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, "TextList"

    const-string v1, "[MenuController] act onItemClick()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iCurrPosition:I

    .line 105
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->SetValue(Ljava/lang/String;)V

    .line 107
    const-string v0, "TextList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] onItemClick(), key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->mPreference:Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, param:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 141
    :goto_0
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onMeasure(II)V

    .line 144
    return-void

    .line 125
    :sswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 129
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 133
    :sswitch_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 137
    :sswitch_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_text_list_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 116
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/TextList;->iOrientation:I

    .line 117
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 118
    return-void
.end method
