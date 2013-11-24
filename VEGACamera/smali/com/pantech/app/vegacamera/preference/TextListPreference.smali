.class public Lcom/pantech/app/vegacamera/preference/TextListPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "TextListPreference.java"


# instance fields
.field private aItemIconIds:[I

.field private aItemSetIconIds:[I

.field private aSubItemIconIds:[I

.field private iTitleIconId:I

.field private iTitleSetIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v4, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->iTitleIconId:I

    .line 15
    iput v4, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->iTitleSetIconId:I

    .line 16
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    .line 17
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    .line 18
    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    .line 22
    sget-object v2, Lcom/pantech/app/vegacamera/R$styleable;->TextListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 24
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->iTitleIconId:I

    .line 25
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->iTitleSetIconId:I

    .line 26
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    .line 27
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    .line 28
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    return-void
.end method

.method private GetIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 75
    :goto_0
    return-object v2

    .line 68
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 70
    .local v3, n:I
    new-array v2, v3, [I

    .line 71
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 71
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
    .line 80
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/TextListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v2}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 82
    .local v2, itemIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    new-instance v3, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 83
    .local v3, itemSetIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    new-instance v5, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v5}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 85
    .local v5, subItemIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v4, v0

    .local v4, len:I
    :goto_0
    if-lt v1, v4, :cond_3

    .line 99
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v2, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    .line 103
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    .line 107
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    if-eqz v6, :cond_2

    .line 108
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    .line 111
    :cond_2
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FilterUnsupported(Ljava/util/List;)V

    .line 112
    return-void

    .line 86
    :cond_3
    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 87
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    if-eqz v6, :cond_4

    .line 88
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 90
    :cond_4
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    if-eqz v6, :cond_5

    .line 91
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 93
    :cond_5
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    if-eqz v6, :cond_6

    .line 94
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 85
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetItemIconIds()[I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    return-object v0
.end method

.method public GetItemSetIconIds()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    return-object v0
.end method

.method public GetSubItemIconIds()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    return-object v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->iTitleIconId:I

    return v0
.end method

.method public GetTitleSetIconId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->iTitleSetIconId:I

    return v0
.end method

.method public SetItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemIconIds:[I

    .line 46
    return-void
.end method

.method public SetItemSetIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aItemSetIconIds:[I

    .line 54
    return-void
.end method

.method public SetSubItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/TextListPreference;->aSubItemIconIds:[I

    .line 62
    return-void
.end method
