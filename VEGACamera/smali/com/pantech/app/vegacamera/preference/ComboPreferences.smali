.class public Lcom/pantech/app/vegacamera/preference/ComboPreferences;
.super Ljava/lang/Object;
.source "ComboPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboPreferences"

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pantech/app/vegacamera/preference/ComboPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _GlobalPrefArray:[Ljava/lang/String;

.field private _VolatilePrefArray:[Ljava/lang/String;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefGlobal:Landroid/content/SharedPreferences;

.field private mPrefLocal:Landroid/content/SharedPreferences;

.field private mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_GlobalPrefArray:[Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_VolatilePrefArray:[Ljava/lang/String;

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    .line 51
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 52
    sget-object v2, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 53
    :try_start_0
    sget-object v1, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/pantech/app/vegacamera/R$array;->global_preference_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_GlobalPrefArray:[Ljava/lang/String;

    .line 60
    sget v1, Lcom/pantech/app/vegacamera/R$array;->applet_volatile_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_VolatilePrefArray:[Ljava/lang/String;

    .line 61
    return-void

    .line 52
    .end local v0           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static Get(Landroid/content/Context;)Lcom/pantech/app/vegacamera/preference/ComboPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    sget-object v1, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _GetGlobalPrefArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_GlobalPrefArray:[Ljava/lang/String;

    return-object v0
.end method

.method private _GetVolatilePrefArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_VolatilePrefArray:[Ljava/lang/String;

    return-object v0
.end method

.method private _IsGlobal(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_GetGlobalPrefArray()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 106
    :goto_1
    return v1

    .line 101
    :cond_0
    aget-object v0, v3, v2

    .line 102
    .local v0, a:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    const/4 v1, 0x1

    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private _IsVolatile(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_GetVolatilePrefArray()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 115
    :goto_1
    return v1

    .line 110
    :cond_0
    aget-object v0, v3, v2

    .line 111
    .local v0, a:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const/4 v1, 0x1

    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Lcom/pantech/app/vegacamera/preference/VolatileData;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public GetGlobal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public GetLocal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public SetLocalId(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "cameraId"

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_preferences_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, prefName:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 85
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 86
    return-void
.end method

.method public SetVolatileDataIdx(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/preference/VolatileData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/preference/VolatileData;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/preference/VolatileData;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    .line 90
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/preference/VolatileData;->Contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/preference/ComboPreferences$MyEditor;-><init>(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData;->GetBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData;->GetFloat(Ljava/lang/String;F)F

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData;->GetInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/preference/VolatileData;->GetLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 158
    :goto_0
    return-wide v0

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsVolatile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mVolatileData:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/preference/VolatileData;->GetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->_IsGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, defValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    return-void

    .line 314
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 315
    .local v0, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    const-string v2, "ComboPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MenuController] onSharedPreferenceChanged() key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method
