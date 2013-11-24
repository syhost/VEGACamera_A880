.class public Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;
.super Ljava/lang/Object;
.source "SubItemInfoClass.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;
.implements Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubItemInfoClass"


# instance fields
.field private bUnchangeTitleImage:Z

.field private bUsedTypeIcon:Z

.field private iCurrImage:I

.field private iOrientation:I

.field private iStartPos:I

.field private mAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

.field private mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

.field private sCurrTitle:Ljava/lang/String;

.field private sCurrUsedType:Ljava/lang/String;

.field private sOverrideValue:Ljava/lang/String;

.field private sSubItemCurrValue:Ljava/lang/String;

.field private vRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 34
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mAnimation:Landroid/view/animation/Animation;

    .line 35
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 37
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    .line 39
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUnchangeTitleImage:Z

    .line 40
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUsedTypeIcon:Z

    .line 42
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iCurrImage:I

    .line 43
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iStartPos:I

    .line 44
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iOrientation:I

    .line 46
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrTitle:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sSubItemCurrValue:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrUsedType:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ListPreference;)V
    .locals 2
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 34
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mAnimation:Landroid/view/animation/Animation;

    .line 35
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 37
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    .line 39
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUnchangeTitleImage:Z

    .line 40
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUsedTypeIcon:Z

    .line 42
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iCurrImage:I

    .line 43
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iStartPos:I

    .line 44
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iOrientation:I

    .line 46
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrTitle:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sSubItemCurrValue:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrUsedType:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    .line 64
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 66
    sget v0, Lcom/pantech/app/vegacamera/R$anim;->grow_alpha_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mAnimation:Landroid/view/animation/Animation;

    .line 67
    return-void
.end method

.method private _InitSubItemPopup(Landroid/view/View;)V
    .locals 9
    .parameter "root"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 235
    const-string v3, "SubItemInfoClass"

    const-string v4, "[MenuController] _InitSubItemPopup()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 238
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    .line 240
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v3, :cond_1

    .line 241
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_text_list:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/TextList;

    .line 242
    .local v2, popupList:Lcom/pantech/app/vegacamera/menu/popup/TextList;
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/TextList$Listener;)V

    .line 243
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/TextList;->Initialize(Lcom/pantech/app/vegacamera/preference/TextListPreference;)V

    .line 244
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iStartPos:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #popupList:Lcom/pantech/app/vegacamera/menu/popup/TextList;
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    if-eqz v3, :cond_2

    .line 249
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_vert_list:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;

    .line 251
    .local v2, popupList:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList$Listener;)V

    .line 252
    const-string v3, "except_list_none_item"

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->SetExceptListNoneItem(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;->Initialize(Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;)V

    .line 254
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 255
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iStartPos:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 259
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #popupList:Lcom/pantech/app/vegacamera/menu/popup/ButtonVertList;
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    if-eqz v3, :cond_3

    .line 260
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_2nd_list:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;

    .line 261
    .local v2, popupList:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V

    .line 262
    const-string v3, "second_depth"

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetDepthStyle(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->Initialize(Lcom/pantech/app/vegacamera/preference/ButtonListPreference;)V

    .line 264
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 265
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 266
    .end local v2           #popupList:Lcom/pantech/app/vegacamera/menu/popup/ButtonList;
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    if-eqz v3, :cond_0

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, popupList:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->getsStyle()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 269
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_seekbar:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #popupList:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;

    .line 273
    .restart local v2       #popupList:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
    :goto_1
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;)V

    .line 274
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->Initialize(Lcom/pantech/app/vegacamera/preference/SeekBarPreference;)V

    .line 275
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 276
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 271
    :cond_4
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_seekbar_vert:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #popupList:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;

    .restart local v2       #popupList:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
    goto :goto_1
.end method


# virtual methods
.method public CurrPreference()Lcom/pantech/app/vegacamera/preference/ListPreference;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    return-object v0
.end method

.method public CurrTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, sTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetTitle()Ljava/lang/String;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrTitle:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrTitle:Ljava/lang/String;

    return-object v1
.end method

.method public CurrTitleImage()I
    .locals 6

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, iconIds:[I
    const/4 v2, 0x0

    .line 94
    .local v2, titleIcon:I
    const/4 v1, 0x0

    .line 96
    .local v1, index:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UnChangeTitleImage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v2

    .line 107
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 108
    move v1, v2

    .line 150
    :cond_1
    :goto_1
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iCurrImage:I

    .line 152
    iget v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iCurrImage:I

    :goto_2
    return v3

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    if-eqz v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetTitleIconId()I

    move-result v2

    .line 101
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetTitleIconId()I

    move-result v2

    .line 103
    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetTitleIconId()I

    move-result v2

    goto :goto_0

    .line 111
    :cond_5
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v3, :cond_7

    .line 112
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 121
    :cond_6
    :goto_3
    if-eqz v0, :cond_b

    .line 122
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 123
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v1, v0, v3

    .line 124
    goto :goto_1

    .line 113
    :cond_7
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    if-eqz v3, :cond_8

    .line 114
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 115
    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v3, :cond_9

    .line 116
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetItemIconIds()[I

    move-result-object v0

    .line 117
    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v3, :cond_6

    .line 118
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetItemIconIds()[I

    move-result-object v0

    goto :goto_3

    .line 125
    :cond_a
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v1, v0, v3

    .line 126
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 128
    const-string v3, "SubItemInfoClass"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MenuController] fail to find override value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->Print()V

    .line 130
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 134
    :cond_b
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    if-eqz v3, :cond_d

    .line 135
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/TextListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetTitleIconId()I

    move-result v2

    .line 144
    :cond_c
    :goto_4
    if-eqz v2, :cond_1

    .line 145
    move v1, v2

    goto/16 :goto_1

    .line 136
    :cond_d
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    if-eqz v3, :cond_e

    .line 137
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetTitleIconId()I

    move-result v2

    .line 138
    goto :goto_4

    :cond_e
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    if-eqz v3, :cond_f

    .line 139
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetTitleIconId()I

    move-result v2

    .line 140
    goto :goto_4

    :cond_f
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v3, v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v3, :cond_c

    .line 141
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v3, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetTitleIconId()I

    move-result v2

    goto :goto_4
.end method

.method public CurrTitleSetImage()I
    .locals 3

    .prologue
    .line 156
    const/4 v1, -0x1

    .line 157
    .local v1, titleSetIcon:I
    const/4 v0, -0x1

    .line 159
    .local v0, index:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UnChangeTitleImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    instance-of v2, v2, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    check-cast v2, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetTitleSetIconId()I

    move-result v1

    .line 163
    :cond_0
    move v0, v1

    .line 167
    :cond_1
    return v0
.end method

.method public CurrUsedType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, sType:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetUsedType()Ljava/lang/String;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrUsedType:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sCurrUsedType:Ljava/lang/String;

    return-object v1
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 326
    const-string v0, "SubItemInfoClass"

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

    .line 327
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UpdateSubItemInfo()V

    .line 328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    return-void
.end method

.method public OverrideItems(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UpdateSubItemInfo()V

    .line 228
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    .line 79
    return-void
.end method

.method public SetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 318
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iOrientation:I

    .line 319
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public SetPopUpAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mAnimation:Landroid/view/animation/Animation;

    .line 71
    return-void
.end method

.method public SetUnchangeTitleImage(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUnchangeTitleImage:Z

    .line 172
    return-void
.end method

.method public SetUsedTypeIcon(Z)V
    .locals 0
    .parameter "used"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUsedTypeIcon:Z

    .line 201
    return-void
.end method

.method public ShowPopup(Landroid/view/View;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 285
    const-string v0, "SubItemInfoClass"

    const-string v1, "[MenuController] ShowPopup()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->_InitSubItemPopup(Landroid/view/View;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->clearAnimation()V

    .line 292
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    :cond_1
    return-void
.end method

.method public SubItemCurrValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, sValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntry()Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sSubItemCurrValue:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sSubItemCurrValue:Ljava/lang/String;

    return-object v2

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v0

    .end local v1           #sValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 187
    .restart local v1       #sValue:Ljava/lang/String;
    goto :goto_0

    .line 189
    :cond_1
    const-string v2, "SubItemInfoClass"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController] fail to find override value = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->sOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->Print()V

    goto :goto_0
.end method

.method public SubPopupStartPos(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 281
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->iStartPos:I

    .line 282
    return-void
.end method

.method public UnChangeTitleImage()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUnchangeTitleImage:Z

    return v0
.end method

.method public UpdateSubItemInfo()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleImage()I

    .line 219
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->SubItemCurrValue()Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mListener:Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass$Listener;->OnUpdateSubItemInfo()V

    .line 223
    :cond_0
    return-void
.end method

.method public UsedTypeIcon()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->bUsedTypeIcon:Z

    return v0
.end method

.method public _CloseSubPopup()Z
    .locals 2

    .prologue
    .line 298
    const-string v0, "SubItemInfoClass"

    const-string v1, "[MenuController] _CloseSubPopup()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->clearAnimation()V

    .line 301
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _GetSubPopupWindow()Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
    .locals 2

    .prologue
    .line 309
    const-string v0, "SubItemInfoClass"

    const-string v1, "[MenuController] _GetSubPopupWindow()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->mSubPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _ReloadPreference()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UpdateSubItemInfo()V

    .line 232
    return-void
.end method
