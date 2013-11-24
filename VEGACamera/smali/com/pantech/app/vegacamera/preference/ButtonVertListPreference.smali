.class public Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "ButtonVertListPreference.java"


# instance fields
.field private aItemIconIds:[I

.field private aSubItemIconIds:[I

.field private iTitleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v2, Lcom/pantech/app/vegacamera/R$styleable;->ButtonVertListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 22
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->iTitleIconId:I

    .line 23
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    .line 24
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aSubItemIconIds:[I

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method

.method private GetIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 59
    :goto_0
    return-object v2

    .line 52
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 54
    .local v3, n:I
    new-array v2, v3, [I

    .line 55
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 56
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public FilterUnsupported(Ljava/util/List;)V
    .locals 5
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
    .line 64
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/pantech/app/vegacamera/util/IntArray;

    invoke-direct {v2}, Lcom/pantech/app/vegacamera/util/IntArray;-><init>()V

    .line 67
    .local v2, itemIconIds:Lcom/pantech/app/vegacamera/util/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v0

    .local v3, len:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 75
    iget-object v4, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/util/IntArray;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/util/IntArray;->toArray([I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FilterUnsupported(Ljava/util/List;)V

    .line 80
    return-void

    .line 68
    :cond_1
    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    if-eqz v4, :cond_2

    .line 70
    iget-object v4, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/util/IntArray;->add(I)V

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetItemIconIds()[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    return-object v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->iTitleIconId:I

    return v0
.end method

.method public SetItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aItemIconIds:[I

    .line 38
    return-void
.end method

.method public getaSubItemIconIds()[I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aSubItemIconIds:[I

    return-object v0
.end method

.method public setaSubItemIconIds([I)V
    .locals 0
    .parameter "aSubItemIconIds"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ButtonVertListPreference;->aSubItemIconIds:[I

    .line 46
    return-void
.end method
