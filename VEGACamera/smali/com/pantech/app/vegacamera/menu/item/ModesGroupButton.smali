.class public Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;
.super Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
.source "ModesGroupButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModesGroupButton"


# instance fields
.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

.field private mPrefKeys:[Ljava/lang/String;

.field private mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "preferenceGroup"
    .parameter "prefKeys"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p4}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPrefKeys:[Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    .line 32
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 33
    iput-object p3, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPrefKeys:[Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_SetTitleInitResource()V

    .line 35
    return-void
.end method

.method private _SetTitleImageResource()V
    .locals 8

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, iconIds:[I
    const/4 v2, 0x0

    .line 77
    .local v2, iconSetIds:[I
    const/4 v5, 0x0

    .line 79
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v7, "pref_mode_group"

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    .line 80
    .local v4, pref:Lcom/pantech/app/vegacamera/preference/TextListPreference;
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 81
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    .line 82
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v5

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, index:I
    const/4 v1, -0x1

    .line 87
    .local v1, iconIdx:I
    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_IsCurrentedItem()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    aget v1, v2, v3

    .line 96
    :goto_0
    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    .line 106
    .end local v3           #index:I
    :goto_1
    return-void

    .line 91
    .restart local v3       #index:I
    :cond_0
    aget v1, v0, v3

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    aget v1, v0, v3

    goto :goto_0

    .line 98
    .end local v1           #iconIdx:I
    .end local v3           #index:I
    :cond_2
    const/4 v1, -0x1

    .line 99
    .restart local v1       #iconIdx:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_IsCurrentedItem()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v1

    .line 104
    :goto_2
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleSetIconId()I

    move-result v1

    goto :goto_2
.end method

.method private _SetTitleInitResource()V
    .locals 8

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, iconIds:[I
    const/4 v2, 0x0

    .line 40
    .local v2, iconSetIds:[I
    const/4 v5, 0x0

    .line 42
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v7, "pref_mode_group"

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    .line 44
    .local v4, pref:Lcom/pantech/app/vegacamera/preference/TextListPreference;
    if-nez v4, :cond_0

    .line 72
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 47
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemSetIconIds()[I

    move-result-object v2

    .line 48
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v5

    .line 50
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 52
    .local v3, index:I
    const/4 v1, -0x1

    .line 53
    .local v1, iconIdx:I
    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_IsCurrentedItem()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    aget v1, v2, v3

    .line 62
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    aget v1, v0, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    aget v1, v0, v3

    goto :goto_1

    .line 64
    .end local v1           #iconIdx:I
    .end local v3           #index:I
    :cond_3
    const/4 v1, -0x1

    .line 65
    .restart local v1       #iconIdx:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_IsCurrentedItem()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v1

    .line 70
    :goto_2
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleSetIconId()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public CloseSubPopup()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_CloseSubPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_SetCurrPosition(I)V

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetSubPopupWindow()Landroid/view/View;
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v1, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_GetSubPopupWindow()Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, result:Landroid/view/View;
    const-string v1, "ModesGroupButton"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] GetSubPopupWindow() :: result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v0, :cond_0

    .line 156
    .end local v0           #result:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->GetSubPopupWindow()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs OverrideItems([Ljava/lang/String;)V
    .locals 2
    .parameter "keyvalues"

    .prologue
    .line 110
    const-string v0, "ModesGroupButton"

    const-string v1, "[MenuController] OverrideItems()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_InitMainItemPopup()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->OverrideItems([Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public ReloadPreference()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ReloadPreference()V

    .line 120
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    .line 28
    return-void
.end method

.method protected _ClosedMenuItem()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_ChangeModeGItem()V

    .line 169
    :cond_0
    return-void
.end method

.method protected _InitMainItemPopup()V
    .locals 7

    .prologue
    .line 124
    const-string v3, "ModesGroupButton"

    const-string v4, "[MenuController] _InitMainItemPopup()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 126
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 128
    .local v2, root:Landroid/view/ViewGroup;
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_modes_group:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    .line 129
    .local v1, popup:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;)V

    .line 130
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_GetMenuItemLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_GetMenuItemTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_GetMenuItemRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_GetMenuItemBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->SetItemRect(IIII)V

    .line 131
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPrefKeys:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->Initialize(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 134
    return-void
.end method

.method protected _UpdateGroupTitle()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->_SetTitleImageResource()V

    .line 162
    return-void
.end method
