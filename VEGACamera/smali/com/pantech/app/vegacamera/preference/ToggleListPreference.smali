.class public Lcom/pantech/app/vegacamera/preference/ToggleListPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "ToggleListPreference.java"


# instance fields
.field private aItemIconIds:[I

.field private aItemSetIconIds:[I

.field private iTitleIconId:I

.field private iTitleSetIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v2, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->iTitleIconId:I

    .line 15
    iput v2, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->iTitleSetIconId:I

    .line 16
    iput-object v4, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    .line 17
    iput-object v4, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    .line 21
    sget-object v2, Lcom/pantech/app/vegacamera/R$styleable;->ToggleListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 23
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->iTitleIconId:I

    .line 24
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->iTitleSetIconId:I

    .line 25
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    .line 26
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method

.method private GetIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "icons"

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 65
    :goto_0
    return-object v2

    .line 58
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 60
    .local v3, n:I
    new-array v2, v3, [I

    .line 61
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 62
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public FilterUnsupported(Ljava/util/List;)V
    .locals 6
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
    .line 70
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v2}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 72
    .local v2, itemIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    new-instance v3, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 74
    .local v3, itemSetIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v4, v0

    .local v4, len:I
    :goto_0
    if-lt v1, v4, :cond_2

    .line 86
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v5

    new-array v5, v5, [I

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    if-eqz v5, :cond_1

    .line 91
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v5

    new-array v5, v5, [I

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    .line 94
    :cond_1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FilterUnsupported(Ljava/util/List;)V

    .line 95
    return-void

    .line 75
    :cond_2
    aget-object v5, v0, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 76
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    if-eqz v5, :cond_3

    .line 77
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 80
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    if-eqz v5, :cond_4

    .line 81
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetItemIconIds()[I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    return-object v0
.end method

.method public GetItemSetIconIds()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    return-object v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->iTitleIconId:I

    return v0
.end method

.method public GetTitleSetIconId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->iTitleSetIconId:I

    return v0
.end method

.method public SetItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemIconIds:[I

    .line 44
    return-void
.end method

.method public SetItemSetIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ToggleListPreference;->aItemSetIconIds:[I

    .line 52
    return-void
.end method
