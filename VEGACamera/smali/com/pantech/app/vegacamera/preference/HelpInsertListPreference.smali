.class public Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "HelpInsertListPreference.java"


# instance fields
.field private aHelpBgIds:[I

.field private aItemIconIds:[I

.field private aItemSetIconIds:[I

.field private aSubItemIconIds:[I

.field private iHelpBgId:I

.field private iTitleIconId:I

.field private iTitleSetIconId:I

.field private sHelpTip:Ljava/lang/String;

.field private sHelpTips:[Ljava/lang/String;

.field private sListStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v4, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iTitleIconId:I

    .line 15
    iput v4, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iTitleSetIconId:I

    .line 16
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    .line 17
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    .line 18
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aSubItemIconIds:[I

    .line 20
    iput v4, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iHelpBgId:I

    .line 21
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    .line 23
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sHelpTip:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sHelpTips:[Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sListStyle:Ljava/lang/String;

    .line 30
    sget-object v2, Lcom/pantech/app/vegacamera/R$styleable;->HelpInsertListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iTitleIconId:I

    .line 33
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iTitleSetIconId:I

    .line 34
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    .line 35
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    .line 36
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aSubItemIconIds:[I

    .line 37
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iHelpBgId:I

    .line 38
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    .line 39
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sHelpTip:Ljava/lang/String;

    .line 40
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetStrings(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sHelpTips:[Ljava/lang/String;

    .line 41
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sListStyle:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private GetIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    const/4 v2, 0x0

    .line 122
    :goto_0
    return-object v2

    .line 115
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 117
    .local v3, n:I
    new-array v2, v3, [I

    .line 118
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 119
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private GetStrings(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 108
    :goto_0
    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 103
    .local v3, n:I
    new-array v2, v3, [Ljava/lang/String;

    .line 104
    .local v2, ids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public FilterUnsupported(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 128
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 129
    .local v3, itemIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    new-instance v4, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v4}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 130
    .local v4, itemSetIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    new-instance v1, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v1}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 132
    .local v1, helpBgIds:Lcom/pantech/app/vegacamera/util/IntArray;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v5, v0

    .local v5, len:I
    :goto_0
    if-lt v2, v5, :cond_3

    .line 146
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    .line 150
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    if-eqz v6, :cond_1

    .line 151
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    if-eqz v6, :cond_2

    .line 155
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v1, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    .line 158
    :cond_2
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FilterUnsupported(Ljava/util/List;)V

    .line 159
    return-void

    .line 133
    :cond_3
    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 134
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    if-eqz v6, :cond_4

    .line 135
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 137
    :cond_4
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    if-eqz v6, :cond_5

    .line 138
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    aget v6, v6, v2

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 140
    :cond_5
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    if-eqz v6, :cond_6

    .line 141
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    aget v6, v6, v2

    invoke-virtual {v1, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 132
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public GetHelpBgId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iHelpBgId:I

    return v0
.end method

.method public GetHelpBgIds()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    return-object v0
.end method

.method public GetHelpTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sHelpTip:Ljava/lang/String;

    return-object v0
.end method

.method public GetHelpTips()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sHelpTips:[Ljava/lang/String;

    return-object v0
.end method

.method public GetItemIconIds()[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    return-object v0
.end method

.method public GetItemSetIconIds()[I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    return-object v0
.end method

.method public GetListStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->sListStyle:Ljava/lang/String;

    return-object v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iTitleIconId:I

    return v0
.end method

.method public GetTitleSetIconId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->iTitleSetIconId:I

    return v0
.end method

.method public SetHelpBgIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aHelpBgIds:[I

    .line 83
    return-void
.end method

.method public SetItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemIconIds:[I

    .line 63
    return-void
.end method

.method public SetItemSetIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aItemSetIconIds:[I

    .line 71
    return-void
.end method

.method public getaSubItemIconIds()[I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/HelpInsertListPreference;->aSubItemIconIds:[I

    return-object v0
.end method
