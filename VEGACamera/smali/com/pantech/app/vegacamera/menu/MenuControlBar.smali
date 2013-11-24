.class public Lcom/pantech/app/vegacamera/menu/MenuControlBar;
.super Landroid/widget/LinearLayout;
.source "MenuControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;
.implements Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;,
        Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuControlBar"


# instance fields
.field private _IsNoneCameraSwitchItem:Z

.field private _IsNoneEffectsItem:Z

.field private _IsNoneFlashItem:Z

.field private _IsNoneModesItem:Z

.field private _IsNoneSettingsItem:Z

.field private iItemCount:I

.field private iLayoutHeight:I

.field private iPerViewHeight:I

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

.field private mMenuItemButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupedIndicator:Landroid/view/View;

.field private mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

.field private final space:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 39
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    .line 42
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPopupedIndicator:Landroid/view/View;

    .line 44
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    .line 45
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    .line 47
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneFlashItem:Z

    .line 48
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneCameraSwitchItem:Z

    .line 49
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneEffectsItem:Z

    .line 50
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneModesItem:Z

    .line 51
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneSettingsItem:Z

    .line 53
    iput v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iLayoutHeight:I

    .line 54
    iput v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 55
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iItemCount:I

    .line 56
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_pos_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->space:I

    .line 104
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method private _AddControls([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "defaultKeys"
    .parameter "modesKeys"
    .parameter "effectsKeys"
    .parameter "settingsKeys"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    const-string v3, "MenuControlBar"

    const-string v4, "[MenuController] _AddControls"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_SetItemNumberCount([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iItemCount:I

    .line 161
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iLayoutHeight:I

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->space:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iItemCount:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 162
    const-string v3, "MenuControlBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] per item height = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_4

    .line 184
    .end local v1           #i:I
    :cond_0
    if-eqz p2, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v3, p2

    if-lt v1, v3, :cond_8

    .line 193
    if-nez v0, :cond_a

    .line 194
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneModesItem:Z

    .line 199
    :goto_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_AddModesItem(Landroid/content/Context;[Ljava/lang/String;)V

    .line 203
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    if-eqz p3, :cond_2

    .line 204
    const/4 v0, 0x0

    .line 205
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v3, p3

    if-lt v1, v3, :cond_b

    .line 212
    if-nez v0, :cond_d

    .line 213
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneEffectsItem:Z

    .line 218
    :goto_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_AddEffectsItem(Landroid/content/Context;[Ljava/lang/String;)V

    .line 222
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    if-eqz p4, :cond_3

    .line 223
    const/4 v0, 0x0

    .line 224
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v3, p4

    if-lt v1, v3, :cond_e

    .line 231
    if-nez v0, :cond_10

    .line 232
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneSettingsItem:Z

    .line 237
    :goto_6
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p4}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_AddSettingsItem(Landroid/content/Context;[Ljava/lang/String;)V

    .line 241
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_InitEnableItem()V

    .line 242
    return-void

    .line 167
    .restart local v1       #i:I
    :cond_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 168
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_5

    .line 169
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_flash_mode_camera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 170
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-static {v3}, Lcom/pantech/app/vegacamera/CameraSettings;->FilterUnsupportedFlash(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 171
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneFlashItem:Z

    .line 175
    :goto_7
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_AddFlashItem(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    .line 166
    :cond_5
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_6
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneFlashItem:Z

    goto :goto_7

    .line 176
    :cond_7
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_AddSwitchItem(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    goto :goto_8

    .line 187
    .end local v2           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    .restart local v0       #count:I
    :cond_8
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 188
    .restart local v2       #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_9

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 196
    .end local v2           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_a
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneModesItem:Z

    goto/16 :goto_2

    .line 206
    :cond_b
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 207
    .restart local v2       #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_c

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 215
    .end local v2           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_d
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneEffectsItem:Z

    goto/16 :goto_4

    .line 225
    :cond_e
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    aget-object v4, p4, v1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 226
    .restart local v2       #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_f

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 224
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 234
    .end local v2           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_10
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneSettingsItem:Z

    goto/16 :goto_6
.end method

.method private _AddEffectsItem(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "keys"

    .prologue
    .line 353
    new-instance v1, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/MenuControlBar;Landroid/content/Context;)V

    .line 355
    .local v1, item:Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 356
    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    .line 355
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 356
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 355
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 357
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    new-instance v0, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    sget v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_EFFECTS_GROUP_MENU_ITEM:I

    invoke-direct {v0, p1, v3, p2, v4}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;I)V

    .line 360
    .local v0, b:Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->effects_menu_button:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->setId(I)V

    .line 361
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->menu_item_selector:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->setBackgroundResource(I)V

    .line 363
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;)V

    .line 364
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->content_description_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    sget v3, Lcom/pantech/app/vegacamera/R$anim;->grow_alpha_in:I

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->SetButtonAnimation(Landroid/view/animation/Animation;)V

    .line 367
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemLayout()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->addView(Landroid/view/View;)V

    .line 371
    const/4 v1, 0x0

    .line 372
    return-void
.end method

.method private _AddFlashItem(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V
    .locals 5
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 310
    new-instance v1, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/MenuControlBar;Landroid/content/Context;)V

    .line 312
    .local v1, item:Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 313
    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    .line 312
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 313
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 312
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance v0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    sget v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_FLASH_MENU_ITEM:I

    invoke-direct {v0, p1, p2, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;I)V

    .line 317
    .local v0, b:Lcom/pantech/app/vegacamera/menu/item/SingleButton;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->flash_menu_button:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setId(I)V

    .line 318
    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->menu_item_selector:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setBackgroundResource(I)V

    .line 319
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;)V

    .line 321
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->content_description_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 323
    sget v3, Lcom/pantech/app/vegacamera/R$anim;->grow_alpha_in:I

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetButtonAnimation(Landroid/view/animation/Animation;)V

    .line 324
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemLayout()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->addView(Landroid/view/View;)V

    .line 328
    const/4 v1, 0x0

    .line 329
    return-void
.end method

.method private _AddModesItem(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "keys"

    .prologue
    .line 375
    new-instance v1, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/MenuControlBar;Landroid/content/Context;)V

    .line 377
    .local v1, item:Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 378
    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    .line 377
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 378
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 377
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v0, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    sget v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    invoke-direct {v0, p1, v3, p2, v4}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;I)V

    .line 382
    .local v0, b:Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->modes_menu_button:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->setId(I)V

    .line 383
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->menu_item_selector:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->setBackgroundResource(I)V

    .line 385
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$Listener;)V

    .line 386
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    .line 387
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->content_description_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    sget v3, Lcom/pantech/app/vegacamera/R$anim;->grow_alpha_in:I

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/ModesGroupButton;->SetButtonAnimation(Landroid/view/animation/Animation;)V

    .line 389
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemLayout()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 390
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->addView(Landroid/view/View;)V

    .line 393
    const/4 v1, 0x0

    .line 394
    return-void
.end method

.method private _AddSettingsItem(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "keys"

    .prologue
    .line 397
    new-instance v1, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/MenuControlBar;Landroid/content/Context;)V

    .line 399
    .local v1, item:Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 400
    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    .line 399
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 400
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 399
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    new-instance v0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    .line 404
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 406
    sget v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    .line 403
    invoke-direct {v0, p1, v3, p2, v4}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;I)V

    .line 407
    .local v0, b:Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->settings_menu_button:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->setId(I)V

    .line 408
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->menu_item_selector:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->setBackgroundResource(I)V

    .line 410
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;)V

    .line 411
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    .line 412
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->content_description_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemLayout()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->addView(Landroid/view/View;)V

    .line 417
    const/4 v1, 0x0

    .line 418
    return-void
.end method

.method private _AddSwitchItem(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V
    .locals 5
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 332
    new-instance v1, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/MenuControlBar;Landroid/content/Context;)V

    .line 334
    .local v1, item:Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 335
    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    .line 334
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 335
    iget v4, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iPerViewHeight:I

    .line 334
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 336
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    sget v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    invoke-direct {v0, p1, p2, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;I)V

    .line 339
    .local v0, b:Lcom/pantech/app/vegacamera/menu/item/SingleButton;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->camera_switch_menu_button:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setId(I)V

    .line 340
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->menu_item_selector:I

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setBackgroundResource(I)V

    .line 342
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;)V

    .line 343
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->content_description_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemLayout()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->addView(Landroid/view/View;)V

    .line 349
    const/4 v1, 0x0

    .line 350
    return-void
.end method

.method private _CloseEtcMenuItemDepth()V
    .locals 3

    .prologue
    .line 654
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] _CloseEtcMenuItemDepth()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    return-void

    .line 655
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 656
    .local v0, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseMenuItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    goto :goto_0
.end method

.method private _InitEnableItem()V
    .locals 13

    .prologue
    .line 253
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v4, 0x1

    .line 254
    .local v4, IsIA:Z
    :goto_0
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    const/4 v3, 0x1

    .line 255
    .local v3, IsHDR:Z
    :goto_1
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/16 v12, 0x9

    if-ne v11, v12, :cond_2

    const/4 v5, 0x1

    .line 256
    .local v5, IsPanorama:Z
    :goto_2
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_3

    const/4 v0, 0x1

    .line 257
    .local v0, IsBeauty:Z
    :goto_3
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    const/4 v8, 0x1

    .line 258
    .local v8, IsSelf:Z
    :goto_4
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v1, 0x1

    .line 259
    .local v1, IsBestFace:Z
    :goto_5
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    const/4 v9, 0x1

    .line 260
    .local v9, IsText:Z
    :goto_6
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_7

    const/4 v6, 0x1

    .line 261
    .local v6, IsRecord:Z
    :goto_7
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_8

    const/4 v2, 0x1

    .line 263
    .local v2, IsEffects:Z
    :goto_8
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/pantech/app/vegacamera/Camera;

    const-string v12, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/Camera;->CheckServiceRunning(Ljava/lang/String;)Z

    move-result v7

    .line 265
    .local v7, IsRemote:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_9
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 307
    return-void

    .line 253
    .end local v0           #IsBeauty:Z
    .end local v1           #IsBestFace:Z
    .end local v2           #IsEffects:Z
    .end local v3           #IsHDR:Z
    .end local v4           #IsIA:Z
    .end local v5           #IsPanorama:Z
    .end local v6           #IsRecord:Z
    .end local v7           #IsRemote:Z
    .end local v8           #IsSelf:Z
    .end local v9           #IsText:Z
    .end local v10           #i:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 254
    .restart local v4       #IsIA:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 255
    .restart local v3       #IsHDR:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 256
    .restart local v5       #IsPanorama:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 257
    .restart local v0       #IsBeauty:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 258
    .restart local v8       #IsSelf:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 259
    .restart local v1       #IsBestFace:Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 260
    .restart local v9       #IsText:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    .line 261
    .restart local v6       #IsRecord:Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    .line 267
    .restart local v2       #IsEffects:Z
    .restart local v7       #IsRemote:Z
    .restart local v10       #i:I
    :cond_9
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v11

    sget v12, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_FLASH_MENU_ITEM:I

    if-ne v11, v12, :cond_b

    .line 268
    if-nez v4, :cond_a

    if-nez v0, :cond_a

    if-nez v5, :cond_a

    if-nez v3, :cond_a

    if-nez v8, :cond_a

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-nez v9, :cond_a

    iget-boolean v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneFlashItem:Z

    if-eqz v11, :cond_14

    .line 269
    :cond_a
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 275
    :cond_b
    :goto_a
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v11

    sget v12, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_CAMERA_SWITCH_MENU_ITEM:I

    if-ne v11, v12, :cond_d

    .line 276
    if-nez v7, :cond_c

    if-nez v6, :cond_c

    iget-boolean v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneCameraSwitchItem:Z

    if-eqz v11, :cond_15

    .line 277
    :cond_c
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 283
    :cond_d
    :goto_b
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v11

    sget v12, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    if-ne v11, v12, :cond_f

    .line 284
    if-nez v6, :cond_e

    iget-boolean v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneModesItem:Z

    if-eqz v11, :cond_16

    .line 285
    :cond_e
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 291
    :cond_f
    :goto_c
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v11

    sget v12, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_EFFECTS_GROUP_MENU_ITEM:I

    if-ne v11, v12, :cond_11

    .line 292
    if-nez v6, :cond_10

    if-nez v1, :cond_10

    iget-boolean v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneEffectsItem:Z

    if-eqz v11, :cond_17

    .line 293
    :cond_10
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 299
    :cond_11
    :goto_d
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v11

    sget v12, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    if-ne v11, v12, :cond_13

    .line 300
    if-nez v6, :cond_12

    iget-boolean v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_IsNoneSettingsItem:Z

    if-eqz v11, :cond_18

    .line 301
    :cond_12
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 265
    :cond_13
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 271
    :cond_14
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    goto/16 :goto_a

    .line 279
    :cond_15
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    goto/16 :goto_b

    .line 287
    :cond_16
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    goto :goto_c

    .line 295
    :cond_17
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    goto :goto_d

    .line 303
    :cond_18
    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    goto :goto_e
.end method

.method private _RemoveControls()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iItemCount:I

    .line 246
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->removeAllViews()V

    .line 247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    :cond_0
    return-void
.end method

.method private _SetItemNumberCount([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "defaultKeys"
    .parameter "modesKeys"
    .parameter "effectsKeys"
    .parameter "settingsKeys"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_4

    .line 137
    .end local v1           #i:I
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 141
    :cond_1
    if-eqz p3, :cond_2

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 145
    :cond_2
    if-eqz p4, :cond_3

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_3
    const-string v2, "MenuControlBar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController] menu item number total count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v0

    .line 133
    .restart local v1       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CloseMenuItemAllDepth()Z
    .locals 3

    .prologue
    .line 458
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] CloseMenuItemAllDepth()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 465
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 459
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 460
    .local v0, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseMenuItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    .line 462
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public CloseMenuItemSubDepth()Z
    .locals 3

    .prologue
    .line 469
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] CloseMenuItemSubDepth()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 470
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 471
    .local v0, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseSubPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    .line 473
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public ClosedMenuItem()V
    .locals 3

    .prologue
    .line 451
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] ClosedMenuItem()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    return-void

    .line 452
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 453
    .local v0, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ClosedMenuItem()V

    goto :goto_0
.end method

.method public DisableButtonSound()V
    .locals 3

    .prologue
    .line 511
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] DisableButtonSound()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    return-void

    .line 512
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 513
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method public DisableMenuItemButton(I)V
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 525
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] DisableMenuItemButton()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    return-void

    .line 526
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 527
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 528
    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 529
    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setPressed(Z)V

    .line 530
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    goto :goto_0
.end method

.method public EnableButtonSound()V
    .locals 3

    .prologue
    .line 518
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] EnableButtonSound()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    return-void

    .line 519
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 520
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method public EnableMenuItemButton(I)V
    .locals 3
    .parameter "item"

    .prologue
    .line 501
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] EnableMenuItemButton()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    return-void

    .line 502
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 503
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 504
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    .line 505
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    goto :goto_0
.end method

.method public GetActivePopupWindow()Landroid/view/View;
    .locals 4

    .prologue
    .line 429
    const-string v2, "MenuControlBar"

    const-string v3, "[MenuController] GetActivePopupWindow()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 430
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 431
    .local v1, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->GetPopupWindow()Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    move-result-object v0

    .line 432
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public GetActiveSubPopupWindow()Landroid/view/View;
    .locals 4

    .prologue
    .line 440
    const-string v2, "MenuControlBar"

    const-string v3, "[MenuController] GetActiveSubPopupWindow()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 441
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 442
    .local v1, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->GetSubPopupWindow()Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public Initialize(Lcom/pantech/app/vegacamera/data/AppData;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .parameter "defaultKeys"
    .parameter "modeKeys"
    .parameter "effectsKeys"
    .parameter "settingsKeys"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 109
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 112
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iLayoutHeight:I

    .line 113
    const-string v1, "MenuControlBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] menu control bar layout height = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->iLayoutHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getChildCount()I

    move-result v0

    .line 117
    .local v0, count:I
    if-lez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_RemoveControls()V

    .line 121
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_AddControls([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 615
    const-string v0, "MenuControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] OnChangedMenuItemValue() key = "

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

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;->OnMenuControlSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_0
    return-void
.end method

.method public OnCloseEtcMenuItemDepth()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "MenuControlBar"

    const-string v1, "[MenuController] OnCloseEtcMenuItemDepth()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_CloseEtcMenuItemDepth()V

    .line 651
    return-void
.end method

.method public OnClosePopUp()V
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    return-void

    .line 639
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 640
    .local v0, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ClosedMenuItem()V

    .line 641
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseMenuItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    goto :goto_0
.end method

.method public OnModeMenuSubItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 623
    const-string v0, "MenuControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController] OnModeMenuSubItemChanged() key = "

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

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;->OnMenuControlModeMenuSubItemChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    return-void
.end method

.method public OnOpenMenuItemDepth(Landroid/view/View;ZI)V
    .locals 3
    .parameter "view"
    .parameter "showed"
    .parameter "id"

    .prologue
    .line 584
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] OnOpenMenuItemDepth()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPopupedIndicator:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 611
    .end local p1
    :goto_0
    return-void

    .line 590
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    invoke-interface {v1, p2, p3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;->OnMenuControlOneDepthMenuAct(ZI)V

    .line 594
    :cond_1
    if-eqz p2, :cond_3

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPopupedIndicator:Landroid/view/View;

    .line 597
    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    if-ne p3, v1, :cond_2

    .line 598
    if-eqz p2, :cond_6

    .line 599
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 610
    .end local v0           #i:I
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->requestLayout()V

    goto :goto_0

    .line 594
    .restart local p1
    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 600
    .end local p1
    .restart local v0       #i:I
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v1

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    if-ne v1, v2, :cond_5

    .line 599
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 603
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setEnabled(Z)V

    goto :goto_4

    .line 606
    .end local v0           #i:I
    :cond_6
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->_InitEnableItem()V

    goto :goto_3
.end method

.method public OnReloadSettingPopup()V
    .locals 4

    .prologue
    .line 664
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->ShowMenuItemButton(I)V

    .line 671
    return-void

    .line 664
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 665
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 666
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->RemovePopupWindow()V

    .line 667
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->invalidate()V

    goto :goto_0
.end method

.method public OnUpdateGroupTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 631
    const-string v1, "MenuControlBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] OnUpdateGroupTitle() key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    return-void

    .line 632
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 633
    .local v0, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->UpdateGroupTitle()V

    goto :goto_0
.end method

.method public varargs OverrideItems([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 480
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] OverrideItems()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    return-void

    .line 485
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 486
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->OverrideItems([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Release()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public ReloadPreference()V
    .locals 3

    .prologue
    .line 421
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] ReloadPreference()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->ReloadValue()V

    .line 423
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    return-void

    .line 423
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 424
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ReloadPreference()V

    goto :goto_0
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 69
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mListener:Lcom/pantech/app/vegacamera/menu/MenuControlBar$MenuControlListener;

    .line 71
    if-nez p1, :cond_5

    .line 72
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 73
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    instance-of v1, v0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 74
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 75
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;)V

    .line 83
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    goto :goto_0

    .line 76
    :cond_3
    instance-of v1, v0, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 77
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 78
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;)V

    goto :goto_1

    .line 79
    :cond_4
    instance-of v1, v0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 80
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 81
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;)V

    goto :goto_1

    .line 86
    .end local v0           #b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 87
    .restart local v0       #b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    instance-of v1, v0, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 88
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 89
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SingleButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/item/SingleButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/item/SingleButton$Listener;)V

    .line 97
    :cond_6
    :goto_3
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V

    goto :goto_2

    .line 90
    :cond_7
    instance-of v1, v0, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    if-eqz v1, :cond_8

    move-object v1, v0

    .line 91
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 92
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/item/EffectsGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;)V

    goto :goto_3

    .line 93
    :cond_8
    instance-of v1, v0, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 94
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 95
    check-cast v1, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/menu/item/SettingsGroupButton;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SettingsGroup$Listener;)V

    goto :goto_3
.end method

.method public ShowMenuItemButton(I)V
    .locals 3
    .parameter "item"

    .prologue
    .line 491
    const-string v1, "MenuControlBar"

    const-string v2, "[MenuController] ShowMenuItemButton()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    return-void

    .line 492
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 493
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->OnClick()V

    .line 495
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setPressed(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 683
    const-string v2, "MenuControlBar"

    const-string v3, "[MenuController] menu control bar onClick()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 685
    .local v1, id:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 690
    return-void

    .line 685
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 686
    .local v0, b:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->OnClick()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "MenuControlBar"

    const-string v1, "[MenuController] onFinishInflate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getChildCount()I

    move-result v1

    .line 544
    .local v1, count:I
    const-string v8, "MenuControlBar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[MenuController] onLayout() :: count of child item = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    if-nez v1, :cond_1

    .line 564
    :cond_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 552
    .local v5, width:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->space:I

    sub-int v2, v8, v9

    .line 554
    .local v2, height:I
    const/4 v6, 0x0

    .line 555
    .local v6, xOffset:I
    iget v7, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->space:I

    .line 557
    .local v7, yOffset:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 558
    sub-int v8, v2, v7

    sub-int v9, v1, v3

    div-int v0, v8, v9

    .line 559
    .local v0, cHeight:I
    add-int v4, v7, v0

    .line 560
    .local v4, nextYoffset:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    invoke-virtual {v8, v6, v7, v5, v4}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_SetMenuItemRect(IIII)V

    .line 561
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 562
    move v7, v4

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 579
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 580
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 568
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->mMenuItemButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$id;->control_bar_item_rotate_l:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;

    .line 573
    .local v1, v:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_SetOrientation(I)V

    goto :goto_1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 675
    const-string v0, "MenuControlBar"

    const-string v1, "[MenuController] shouldDelayChildPressedState()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v0, 0x0

    return v0
.end method
