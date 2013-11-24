.class public Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;
.super Lcom/pantech/app/vegacamera/preference/ListPreference;
.source "PopupDialogPreference.java"


# instance fields
.field private iMinusIconId:I

.field private sPlusIconIds:I

.field private sProgressImg:Landroid/graphics/drawable/Drawable;

.field private sThumbIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object v1, Lcom/pantech/app/vegacamera/R$styleable;->PopupDialogPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    return-void
.end method


# virtual methods
.method public GetItemIconIds()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->sPlusIconIds:I

    return v0
.end method

.method public GetTitleIconId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->iMinusIconId:I

    return v0
.end method

.method public getsProgressImg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->sProgressImg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getsThumbIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/PopupDialogPreference;->sThumbIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
