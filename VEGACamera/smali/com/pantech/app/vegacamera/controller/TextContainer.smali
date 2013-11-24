.class public Lcom/pantech/app/vegacamera/controller/TextContainer;
.super Ljava/lang/Object;
.source "TextContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextContainer"


# instance fields
.field private RlTextIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private bIsSubPopupActive:Z

.field private ivTextIcon:Landroid/widget/ImageView;

.field private ivTextIconSel:Landroid/widget/ImageView;

.field private lTextControlBar:Landroid/widget/LinearLayout;

.field private mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mOrientation:I

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

.field private mTextListener:Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;

.field private vRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 26
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mTextListener:Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;

    .line 28
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->RlTextIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 30
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIcon:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIconSel:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 34
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 36
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->vRootView:Landroid/view/ViewGroup;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->bIsSubPopupActive:Z

    .line 50
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->vRootView:Landroid/view/ViewGroup;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_mode_text"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_InitializeLayoutCtl()V

    .line 55
    return-void
.end method

.method private _ShowSubPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 135
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 136
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v3, :cond_0

    .line 137
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->bIsSubPopupActive:Z

    .line 139
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_sub_list:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;

    .line 140
    .local v2, popup:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->Initialize(Lcom/pantech/app/vegacamera/preference/ListPreference;)V

    .line 141
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->setSubPopupListener(Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$SubPopupListener;)V

    .line 142
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->setOrientation(I)V

    .line 143
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 144
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->menu_control_bar:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->ce_control_bar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 147
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->vRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #popup:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIconSel:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    return-void
.end method


# virtual methods
.method public InitializTextContainer()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "TextContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " InitializeText()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetTextImage(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 103
    const-string v0, "TextContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[OnChangedMenuItemValue] key : "

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

    .line 104
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_CloseSubPopup()V

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mPreference:Lcom/pantech/app/vegacamera/preference/ListPreference;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetTextImage(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mTextListener:Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;

    invoke-interface {v0, p2}, Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;->TextValueChangeNotify(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_CloseSubPopup()V

    .line 173
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 174
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mTextListener:Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;

    .line 175
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    .line 176
    return-void
.end method

.method public SetOnTextListener(Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mTextListener:Lcom/pantech/app/vegacamera/controller/TextContainer$TextListener;

    .line 47
    return-void
.end method

.method public SetOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 79
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 80
    const-string v0, "TextContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TextContainer] SetOrientation("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mOrientation:I

    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->RlTextIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->RlTextIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 89
    :cond_1
    return-void
.end method

.method public SetTextImage(Ljava/lang/String;)V
    .locals 2
    .parameter "index"

    .prologue
    .line 92
    const-string v0, "whiteboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_text_preview_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "whiteboard_c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_text_preview_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "blackboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIcon:Landroid/widget/ImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_mode_text_preview_board:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public SetVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 113
    const-string v0, "TextContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TextContainer] SetVisibility() : visibility : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    if-nez p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_CloseSubPopup()V

    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public _CloseSubPopup()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIconSel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->vRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->vRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->bIsSubPopupActive:Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 161
    return-void
.end method

.method public _InitializeLayoutCtl()V
    .locals 3

    .prologue
    .line 63
    const-string v1, "TextContainer"

    const-string v2, "_InitializeLayoutCtl()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->text_control_bar_layout:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    .line 65
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 67
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->lTextControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->text_image:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIcon:Landroid/widget/ImageView;

    .line 70
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->text_image_selected:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->ivTextIconSel:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->text_image_l:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->RlTextIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 75
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->RlTextIcon:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 76
    return-void
.end method

.method public isbIsSubPopupActive()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->bIsSubPopupActive:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->text_image:I

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->mAbsPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_ShowSubPopup()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;->_CloseSubPopup()V

    goto :goto_0
.end method

.method public setbIsSubPopupActive(Z)V
    .locals 0
    .parameter "bIsSubPopupActive"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/TextContainer;->bIsSubPopupActive:Z

    .line 169
    return-void
.end method
