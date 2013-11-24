.class public Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "SpinnerListPreference.java"


# instance fields
.field private aItemIconIds:[I

.field private aSubItemIconIds:[I

.field private iTitleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v1, Lcom/pantech/app/vegacamera/R$styleable;->SpinnerListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 17
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    return-void
.end method


# virtual methods
.method public GetItemIconIds()[I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->aItemIconIds:[I

    return-object v0
.end method

.method public GetSubItemIconIds()[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->aSubItemIconIds:[I

    return-object v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->iTitleIconId:I

    return v0
.end method

.method public SetItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->aItemIconIds:[I

    .line 30
    return-void
.end method

.method public SetSubItemIconIds([I)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/SpinnerListPreference;->aSubItemIconIds:[I

    .line 38
    return-void
.end method
