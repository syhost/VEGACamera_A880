.class public Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "SpinnerList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/vegacamera/menu/AbstractPopupList;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
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

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    .line 21
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListItem:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mContext:Landroid/content/Context;

    .line 37
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
    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListItem:Ljava/util/ArrayList;

    .line 62
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListItem:Ljava/util/ArrayList;

    return-object v4

    .line 66
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "text"

    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v4, "value"

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v4, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    .line 42
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListItem:Ljava/util/ArrayList;

    .line 47
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 49
    .local v0, entryValue:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mContext:Landroid/content/Context;

    .line 50
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_spinner_item:I

    .line 51
    sget v4, Lcom/pantech/app/vegacamera/R$id;->spinner_item_text:I

    .line 49
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 54
    .local v1, mAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 56
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 57
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;

    .line 32
    return-void
.end method

.method public _ReloadPreference()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mSpinner:Landroid/widget/Spinner;

    .line 80
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 100
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->SetValue(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->mPreference:Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/SpinnerList;->SetDisableRotation(Z)V

    .line 90
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onMeasure(II)V

    .line 91
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 96
    return-void
.end method
