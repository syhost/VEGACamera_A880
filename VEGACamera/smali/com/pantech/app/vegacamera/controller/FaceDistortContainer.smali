.class public Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;
.super Ljava/lang/Object;
.source "FaceDistortContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;
.implements Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceContainer"


# instance fields
.field private RlFaceIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private _mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

.field private bIsSubPopupActive:Z

.field private ivFaceIcon:Landroid/widget/ImageView;

.field private ivFaceIconSel:Landroid/widget/ImageView;

.field private lFaceControlBar:Landroid/widget/LinearLayout;

.field private mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

.field private mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

.field private mFaceValue:I

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mOrientation:I

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

.field private vRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    .line 30
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    .line 31
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->RlFaceIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 33
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIconSel:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 37
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 39
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->vRootView:Landroid/view/ViewGroup;

    .line 41
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceValue:I

    .line 43
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->bIsSubPopupActive:Z

    .line 56
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->vRootView:Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_mode_face_effect"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_InitializeLayoutCtl()V

    .line 61
    return-void
.end method

.method public static _SetFaceMode(Ljava/lang/String;)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, index:I
    const-string v1, "squeeze"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string v1, "bigeyes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    :cond_2
    const-string v1, "smalleyes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const/4 v0, 0x5

    .line 123
    goto :goto_0

    :cond_3
    const-string v1, "bigmouth"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    const/4 v0, 0x2

    .line 125
    goto :goto_0

    :cond_4
    const-string v1, "smallmouth"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    const/4 v0, 0x3

    .line 127
    goto :goto_0

    :cond_5
    const-string v1, "bignose"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private _ShowSubPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 214
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 215
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v3, :cond_0

    .line 216
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->bIsSubPopupActive:Z

    .line 218
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_sub_list:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;

    .line 219
    .local v2, popup:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->Initialize(Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    .line 220
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->setSubPopupListener(Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;)V

    .line 221
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->setOrientation(I)V

    .line 222
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 223
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->menu_control_bar:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->ce_control_bar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 226
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #popup:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIconSel:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    return-void
.end method


# virtual methods
.method public InitializeFaceDistort()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "FaceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " InitializeFaceDistort()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "FaceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " InitializeFaceDistort"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->getFaceEffectsIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_SetFaceMode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceValue:I

    .line 69
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceValue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetFaceImage(I)V

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->SetFaceMax(I)V

    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFaceEffectsIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->SetFaceIndex(I)V

    .line 74
    return-void
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 160
    const-string v0, "FaceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FaceDistortionContainer] OnChangedMenuItemValue() key : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_CloseSubPopup()V

    .line 163
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 164
    invoke-static {p2}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_SetFaceMode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceValue:I

    .line 165
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceValue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetFaceImage(I)V

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    invoke-interface {v0, p2}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;->FaceEffectKeyChangeNotify(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_CloseSubPopup()V

    .line 252
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 253
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    .line 254
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    .line 255
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    .line 256
    return-void
.end method

.method public SetControlIndex(I)V
    .locals 1
    .parameter "sliderIndex"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->SetFaceIndex(I)V

    .line 186
    return-void
.end method

.method public SetFaceImage(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_icon_funny_face_squeeze:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_icon_funny_face_bigeyes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_icon_funny_face_smalleyes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_icon_funny_face_bigmouth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_icon_funny_face_smallmouth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 151
    :pswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_icon_funny_face_bignose:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public SetOnFaceEffectChangeListener(Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    .line 53
    return-void
.end method

.method public SetOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 102
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 103
    const-string v0, "FaceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FaceDistortionContainer] SetOrientation("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mOrientation:I

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->RlFaceIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->RlFaceIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 112
    :cond_1
    return-void
.end method

.method public SetVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->setEnabled(Z)V

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_CloseSubPopup()V

    .line 179
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->setEnabled(Z)V

    goto :goto_0
.end method

.method public _CloseSubPopup()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIconSel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->vRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->bIsSubPopupActive:Z

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 240
    return-void
.end method

.method public _InitializeLayoutCtl()V
    .locals 4

    .prologue
    .line 77
    const-string v1, "FaceContainer"

    const-string v2, "_InitializeLayoutCtl()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->face_control_bar_layout:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    .line 79
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->lFaceControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->face_image:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    .line 86
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->face_image_selected:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->ivFaceIconSel:Landroid/widget/ImageView;

    .line 90
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->face_image_l:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->RlFaceIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 91
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->RlFaceIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 93
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->face_control_bar:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    .line 94
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->Initialize(Landroid/content/Context;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 95
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->SetOnFaceChangeListener(Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;)V

    .line 96
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mFaceControl:Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->setEnabled(Z)V

    .line 98
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->SetVisibility(I)V

    .line 99
    return-void
.end method

.method public isbIsSubPopupActive()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->bIsSubPopupActive:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->face_image:I

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_ShowSubPopup()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_CloseSubPopup()V

    goto :goto_0
.end method

.method public onFaceStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 211
    return-void
.end method

.method public onFaceValueChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "FaceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFaceValueChanged() index"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFaceEffectsIndex(I)I

    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->_mListener:Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer$FaceEffectListener;->FaceAmountChangeNotify(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public setbIsSubPopupActive(Z)V
    .locals 0
    .parameter "bIsSubPopupActive"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;->bIsSubPopupActive:Z

    .line 248
    return-void
.end method
