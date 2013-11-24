.class public Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;
.super Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
.source "SettingsGroupButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsGroupButton"


# instance fields
.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

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
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPrefKeys:[Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    .line 32
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 33
    iput-object p3, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPrefKeys:[Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->_SetTitleImageResource()V

    .line 35
    return-void
.end method

.method private _SetTitleImageResource()V
    .locals 4

    .prologue
    .line 38
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v3, "pref_setting_group"

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    .line 39
    .local v1, pref:Lcom/pantech/app/vegacamera/preference/TextListPreference;
    const/4 v0, -0x1

    .line 41
    .local v0, iconIdx:I
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->_IsCurrentedItem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleSetIconId()I

    move-result v0

    .line 48
    :goto_1
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->_UpdateMenuItemInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public CloseSubPopup()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_CloseSubPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_SetCurrPosition(I)V

    .line 83
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetSubPopupWindow()Landroid/view/View;
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v1, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->_GetSubPopupWindow()Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, result:Landroid/view/View;
    const-string v1, "SettingsGroupButton"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] GetSubPopupWindow() :: result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_0

    .line 98
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
    .line 53
    const-string v0, "SettingsGroupButton"

    const-string v1, "[MenuController] OverrideItems()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->_InitMainItemPopup()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->OverrideItems([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public ReloadPreference()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ReloadPreference()V

    .line 63
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    .line 28
    return-void
.end method

.method protected _ClosedMenuItem()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected _InitMainItemPopup()V
    .locals 5

    .prologue
    .line 67
    const-string v3, "SettingsGroupButton"

    const-string v4, "[MenuController] _InitMainItemPopup()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 71
    .local v2, root:Landroid/view/ViewGroup;
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_settings_group:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;

    .line 72
    .local v1, popup:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;)V

    .line 73
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPrefKeys:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup;->Initialize(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 76
    return-void
.end method

.method protected _UpdateGroupTitle()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->_SetTitleImageResource()V

    .line 104
    return-void
.end method
