.class public Lcom/pantech/app/vegacamera/preference/SeekBarPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "SeekBarPreference.java"


# instance fields
.field private iMinusIconId:I

.field private sPlusIconIds:I

.field private sProgressImg:Landroid/graphics/drawable/Drawable;

.field private sStyle:I

.field private sThumbIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v1, Lcom/pantech/app/vegacamera/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->iMinusIconId:I

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sPlusIconIds:I

    .line 22
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sThumbIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sProgressImg:Landroid/graphics/drawable/Drawable;

    .line 24
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sStyle:I

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method


# virtual methods
.method public GetItemIconIds()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sPlusIconIds:I

    return v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->iMinusIconId:I

    return v0
.end method

.method public getsProgressImg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sProgressImg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getsStyle()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sStyle:I

    return v0
.end method

.method public getsThumbIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->sThumbIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
