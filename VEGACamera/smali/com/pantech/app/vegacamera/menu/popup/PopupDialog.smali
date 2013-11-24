.class public Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;
.super Landroid/app/Dialog;
.source "PopupDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;,
        Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final DIALOG_STYLE_SELECTABLE_ALL:Ljava/lang/String; = "type_all"

.field public static final DIALOG_STYLE_SELECTABLE_ENTRY_ONLY:Ljava/lang/String; = "type_entry_only"

.field public static final DIALOG_STYLE_TIPS:Ljava/lang/String; = "type_none"

.field private static final TAG:Ljava/lang/String; = "PopupDialog"


# instance fields
.field private iCurrPosition:I

.field private ivDialogCancel:Landroid/widget/ImageView;

.field private mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

.field private mContext:Landroid/content/Context;

.field private mDialogLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mDialogView:Landroid/view/View;

.field private mItemView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

.field private mTipsView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private sDialogStyle:Ljava/lang/String;

.field private vgDialogItem:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

    .line 32
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->vgDialogItem:Landroid/view/ViewGroup;

    .line 38
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mTipsView:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListView:Landroid/widget/ListView;

    .line 42
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->ivDialogCancel:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    .line 45
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->sDialogStyle:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->iCurrPosition:I

    .line 61
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private _ListGetData()V
    .locals 8

    .prologue
    .line 110
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 119
    return-void

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;-><init>(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;-><init>(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .local v0, inflater:Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    .line 72
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dialog_rotate_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 75
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dialog_item_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->vgDialogItem:Landroid/view/ViewGroup;

    .line 77
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mTitleView:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->setting_dialog_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->ivDialogCancel:Landroid/widget/ImageView;

    .line 80
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->sDialogStyle:Ljava/lang/String;

    const-string v2, "type_none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->setting_help_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->ivDialogCancel:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_dialog_help:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mTipsView:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->vgDialogItem:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->vgDialogItem:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mTipsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->requestWindowFeature(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 104
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->show()V

    .line 107
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->ivDialogCancel:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogView:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->DialogList:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListView:Landroid/widget/ListView;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    .line 92
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->_ListGetData()V

    .line 94
    new-instance v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_dialog_item:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->sDialogStyle:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

    .line 96
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->menu_popup_list_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 98
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    .line 66
    return-void
.end method

.method public getsDialogStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->sDialogStyle:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;->OnDialogDismissed()V

    .line 167
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->setting_dialog_cancel:I

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;->OnDialogDismissed()V

    .line 196
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->cancel()V

    .line 198
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 123
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->iCurrPosition:I

    if-ne v0, p3, :cond_0

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_0
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->iCurrPosition:I

    .line 129
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->getItemTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->SetValue(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mListener:Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mPreference:Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mItemView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->_ListGetData()V

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mAdapter:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "PopupDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 178
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orietation"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->mDialogLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 182
    return-void
.end method

.method public setsDialogStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "sDialogStyle"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog;->sDialogStyle:Ljava/lang/String;

    .line 190
    return-void
.end method
