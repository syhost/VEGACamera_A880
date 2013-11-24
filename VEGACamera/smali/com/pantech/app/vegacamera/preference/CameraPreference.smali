.class public abstract Lcom/pantech/app/vegacamera/preference/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/preference/CameraPreference$OnPreferenceChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mContext:Landroid/content/Context;

    .line 40
    sget-object v1, Lcom/pantech/app/vegacamera/R$styleable;->CameraPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mTitle:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method public GetSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->Get(Landroid/content/Context;)Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public GetTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/CameraPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract ReloadValue()V
.end method
