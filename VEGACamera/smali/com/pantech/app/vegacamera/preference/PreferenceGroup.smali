.class public Lcom/pantech/app/vegacamera/preference/PreferenceGroup;
.super Lcom/pantech/app/vegacamera/preference/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/preference/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public AddChild(Lcom/pantech/app/vegacamera/preference/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/preference/CameraPreference;

    .line 63
    .local v1, pref:Lcom/pantech/app/vegacamera/preference/CameraPreference;
    instance-of v3, v1, Lcom/pantech/app/vegacamera/preference/ListPreference;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 64
    check-cast v0, Lcom/pantech/app/vegacamera/preference/ListPreference;

    .line 65
    .local v0, listPref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 67
    .end local v0           #listPref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :cond_2
    instance-of v3, v1, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 68
    check-cast v1, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    .end local v1           #pref:Lcom/pantech/app/vegacamera/preference/CameraPreference;
    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 69
    .restart local v0       #listPref:Lcom/pantech/app/vegacamera/preference/ListPreference;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ReloadValue()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    return-void

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/preference/CameraPreference;

    .line 52
    .local v0, pref:Lcom/pantech/app/vegacamera/preference/CameraPreference;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/CameraPreference;->ReloadValue()V

    goto :goto_0
.end method

.method public RemovePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public Size()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/pantech/app/vegacamera/preference/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/preference/CameraPreference;

    return-object v0
.end method
