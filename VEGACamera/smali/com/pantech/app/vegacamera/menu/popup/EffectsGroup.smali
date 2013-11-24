.class public Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "EffectsGroup.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/vegacamera/menu/AbstractPopupList;",
        "Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ID_POPUP_ARROW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EffectsGroup"


# instance fields
.field private iCurrPosition:I

.field private iItemBottom:I

.field private iItemTop:I

.field private iOrientation:I

.field private ivPopUpArrow:Landroid/view/View;

.field private mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

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

.field private sCurrentKey:Ljava/lang/String;

.field private sEnterKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_arrow:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->ID_POPUP_ARROW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    .line 28
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 30
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemTop:I

    .line 31
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemBottom:I

    .line 32
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iOrientation:I

    .line 35
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sEnterKey:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    .line 40
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    .line 42
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->ivPopUpArrow:Landroid/view/View;

    .line 56
    return-void
.end method

.method private _ConvertEffectNone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, convert:Z
    const-string v1, "pref_effect_color_tone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "none"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    const-string v1, "pref_effect_color_extraction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_CloseSubPopup()Z

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_3
    return v0
.end method

.method private _InitLayout()V
    .locals 5

    .prologue
    const/4 v3, -0x2

    .line 137
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->ivPopUpArrow:Landroid/view/View;

    if-nez v2, :cond_0

    .line 138
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->ID_POPUP_ARROW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->ivPopUpArrow:Landroid/view/View;

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_arrow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 142
    .local v0, _ArrowWH:I
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemTop:I

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemBottom:I

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->ivPopUpArrow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v0           #_ArrowWH:I
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private _SetEffectNone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValueIndex(I)V

    .line 164
    iput v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 170
    return-void
.end method

.method private _SetToggleIndex(Lcom/pantech/app/vegacamera/preference/ListPreference;)V
    .locals 5
    .parameter "pref"

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    .local v1, entries:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 150
    .local v2, index:I
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, currIndex:I
    array-length v3, v1

    .line 153
    .local v3, indexLength:I
    add-int/lit8 v2, v0, 0x1

    .line 155
    if-ne v2, v3, :cond_0

    .line 156
    const/4 v2, 0x0

    .line 159
    :cond_0
    invoke-virtual {p1, v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValueIndex(I)V

    .line 160
    return-void
.end method

.method private _UpdateEffectGroupValue()V
    .locals 6

    .prologue
    .line 173
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, count:I
    const-string v3, "EffectsGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] sCurrentKey = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    const-string v4, "pref_effect_none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_SetEffectNone()V

    .line 182
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 198
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 185
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 182
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_3
    if-eqz v2, :cond_2

    .line 191
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    const-string v0, "EffectsGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MenuController]  _WritePreferenceValue() key = "

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

    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v1, "pref_effect_group"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    const-string v1, "pref_effect_group"

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;->OnUpdateGroupTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_UpdateEffectGroupValue()V

    .line 210
    return-void
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;[Ljava/lang/String;)V
    .locals 12
    .parameter "group"
    .parameter "keys"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .line 66
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->GetSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "pref_effect_group"

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sEnterKey:Ljava/lang/String;

    .line 69
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sEnterKey:Ljava/lang/String;

    iput-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    .line 71
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    .line 73
    const/4 v4, -0x1

    .line 76
    .local v4, currIdx:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v8, p2

    if-lt v6, v8, :cond_3

    .line 88
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 90
    .local v3, count:I
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v3, :cond_5

    .line 98
    new-instance v8, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_effects_group_item_row:I

    iget-object v11, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10, v11}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    .line 100
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v8, Landroid/widget/ListView;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v8, Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v8, Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v8, Landroid/widget/ListView;

    sget v9, Lcom/pantech/app/vegacamera/R$drawable;->menu_popup_list_view_selector:I

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelector(I)V

    .line 104
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v8, Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 105
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v8, Landroid/widget/ListView;

    iget v9, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 107
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v9, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 108
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    sget v9, Lcom/pantech/app/vegacamera/R$drawable;->camera_effect_selected:I

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedRes(I)V

    .line 112
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    const-string v9, "pref_effect_none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_SetEffectNone()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_InitLayout()V

    .line 118
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mPreferenceGroup:Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    const-string v9, "pref_mode_group"

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, currentPreference:Ljava/lang/String;
    const-string v8, "pref_mode_panorama"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    .line 120
    .local v0, IsPanorama:Z
    :goto_2
    const-string v8, "pref_mode_video_timelapse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v2, 0x1

    .line 121
    .local v2, IsTimeLapse:Z
    :goto_3
    const-string v8, "pref_mode_remote"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v1, 0x1

    .line 123
    .local v1, IsRemote:Z
    :goto_4
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 124
    :cond_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    const-string v9, "pref_effect_color_mono"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 125
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    const-string v9, "pref_effect_color_sepia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 126
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    const-string v9, "pref_effect_color_aqua"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_SetEffectNone()V

    .line 133
    :cond_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    .line 134
    return-void

    .line 77
    .end local v0           #IsPanorama:Z
    .end local v1           #IsRemote:Z
    .end local v2           #IsTimeLapse:Z
    .end local v3           #count:I
    .end local v5           #currentPreference:Ljava/lang/String;
    :cond_3
    aget-object v8, p2, v6

    invoke-virtual {p1, v8}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v7

    .line 78
    .local v7, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v7, :cond_4

    .line 79
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    new-instance v9, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->sCurrentKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 82
    iput v4, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    .line 83
    const-string v8, "EffectsGroup"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "current index = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 91
    .end local v7           #pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    .restart local v3       #count:I
    :cond_5
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v8, p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;)V

    .line 92
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    sget v9, Lcom/pantech/app/vegacamera/R$id;->menu_popup_effects_g:I

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SubPopupStartPos(I)V

    .line 93
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetUnchangeTitleImage(Z)V

    .line 94
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetUsedTypeIcon(Z)V

    .line 90
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 119
    .restart local v5       #currentPreference:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 120
    .restart local v0       #IsPanorama:Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 121
    .restart local v2       #IsTimeLapse:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 227
    const-string v2, "EffectsGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController] SubItemInfoClass.OnChangedMenuItemValue() key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object v0, p1

    .local v0, sKey:Ljava/lang/String;
    move-object v1, p2

    .line 229
    .local v1, sValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    if-eqz v2, :cond_1

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_ConvertEffectNone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_SetEffectNone()V

    .line 232
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_0
    const-string v2, "EffectsGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController]  sKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    invoke-interface {v2, v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    return-void
.end method

.method public OnUpdateSubItemInfo()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method

.method public varargs OverrideItems([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 284
    const-string v6, "EffectsGroup"

    const-string v7, "[MenuController] OverrideItems()"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 286
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-lt v1, v6, :cond_0

    .line 296
    return-void

    .line 287
    :cond_0
    aget-object v3, p1, v1

    .line 288
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    aget-object v5, p1, v6

    .line 289
    .local v5, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 286
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 290
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v4

    .line 291
    .local v4, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->OverrideItems(Ljava/lang/String;)V

    .line 289
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    .line 52
    return-void
.end method

.method public SetItemRect(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 59
    iput p2, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemTop:I

    .line 60
    iput p4, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iItemBottom:I

    .line 61
    return-void
.end method

.method public _CloseSubPopup()Z
    .locals 5

    .prologue
    .line 299
    const-string v3, "EffectsGroup"

    const-string v4, "[MenuController] _CloseSubPopup()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 301
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 309
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 303
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 304
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_CloseSubPopup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    const/4 v3, 0x1

    goto :goto_1

    .line 301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _GetSubPopupWindow()Landroid/view/View;
    .locals 5

    .prologue
    .line 313
    const-string v3, "EffectsGroup"

    const-string v4, "[MenuController] _GetSubPopupWindow()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 321
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_GetSubPopupWindow()Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    move-result-object v2

    .line 317
    .local v2, result:Landroid/view/View;
    if-nez v2, :cond_0

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _ReloadPreference()V
    .locals 5

    .prologue
    .line 330
    const-string v3, "EffectsGroup"

    const-string v4, "[MenuController] _ReloadPreference()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 338
    return-void

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 334
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 335
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_ReloadPreference()V

    .line 332
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public _SetCurrPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 325
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    .line 326
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 243
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "EffectsGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] onItemClick(), position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iCurrPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    invoke-virtual {v1, p3}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetSelectedPosition(I)V

    .line 247
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    if-ne v1, p3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v1, "EffectsGroup"

    const-string v2, "[MenuController] act onItemClick()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iCurrPosition:I

    .line 255
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_CloseSubPopup()Z

    .line 257
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 259
    .local v0, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    instance-of v1, v0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v1, :cond_2

    .line 260
    const-string v1, "EffectsGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MenuController] pref type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_SetToggleIndex(Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    .line 267
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UpdateSubItemInfo()V

    .line 269
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->_WritePreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mListener:Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->ShowPopup(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->SetDisableRotation(Z)V

    .line 357
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onMeasure(II)V

    .line 358
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 342
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iOrientation:I

    .line 343
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 344
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 345
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 351
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->iOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->SetOrientation(I)V

    .line 352
    return-void

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v2

    .line 347
    .local v2, pref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v2, :cond_1

    .line 348
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/EffectsGroup;->mSubItemInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SetOrientation(I)V

    .line 345
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
