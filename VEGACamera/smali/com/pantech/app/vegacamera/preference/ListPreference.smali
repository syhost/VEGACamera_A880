.class public Lcom/pantech/app/vegacamera/preference/ListPreference;
.super Lcom/pantech/app/vegacamera/preference/CameraPreference;
.source "ListPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPreference"


# instance fields
.field private bLoaded:Z

.field private csEntries:[Ljava/lang/CharSequence;

.field private csEntryValues:[Ljava/lang/CharSequence;

.field private final sDefaultValue:Ljava/lang/String;

.field private final sKey:Ljava/lang/String;

.field private final sUsedType:Ljava/lang/String;

.field private sValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/preference/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->bLoaded:Z

    .line 40
    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    .line 41
    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    .line 43
    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sValue:Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/pantech/app/vegacamera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sKey:Ljava/lang/String;

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sDefaultValue:Ljava/lang/String;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sUsedType:Ljava/lang/String;

    .line 52
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetEntries([Ljava/lang/CharSequence;)V

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetEntryValues([Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private PersistStringValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, s:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private SetEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    .line 79
    return-void
.end method

.method private SetEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    .line 83
    return-void
.end method


# virtual methods
.method public FilterUnsupported(Ljava/lang/String;)V
    .locals 6
    .parameter "supported"

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 157
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    .line 158
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    .line 159
    return-void

    .line 151
    .end local v4           #size:I
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 152
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

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
    .line 134
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 143
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    .line 144
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    .line 145
    return-void

    .line 137
    .end local v4           #size:I
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 138
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v5, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public FindIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 112
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 109
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/pantech/app/vegacamera/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public GetEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public GetKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sKey:Ljava/lang/String;

    return-object v0
.end method

.method public GetUsedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sUsedType:Ljava/lang/String;

    return-object v0
.end method

.method public GetValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, s:Landroid/content/SharedPreferences;
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->bLoaded:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sDefaultValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sValue:Ljava/lang/String;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->bLoaded:Z

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sValue:Ljava/lang/String;

    return-object v1
.end method

.method public Print()V
    .locals 4

    .prologue
    .line 162
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preference key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 166
    return-void

    .line 164
    :cond_0
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EntryValues["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ReloadValue()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->bLoaded:Z

    .line 131
    return-void
.end method

.method public SetValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->sValue:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->PersistStringValue(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public SetValueIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 103
    const-string v0, "ListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ListPreference] index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ListPreference;->csEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 105
    return-void
.end method
