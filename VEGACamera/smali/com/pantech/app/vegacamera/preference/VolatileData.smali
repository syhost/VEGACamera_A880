.class public Lcom/pantech/app/vegacamera/preference/VolatileData;
.super Ljava/lang/Object;
.source "VolatileData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public Contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Edit()Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;-><init>(Lcom/pantech/app/vegacamera/preference/VolatileData;)V

    return-object v0
.end method

.method public GetBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .local v0, v:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2
    :cond_0
    monitor-exit p0

    return p2

    .line 45
    .end local v0           #v:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 40
    .local v0, v:Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2
    :cond_0
    monitor-exit p0

    return p2

    .line 38
    .end local v0           #v:Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 26
    .local v0, v:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    monitor-exit p0

    return p2

    .line 24
    .end local v0           #v:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 33
    .local v0, v:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2
    :cond_0
    monitor-exit p0

    return-wide p2

    .line 31
    .end local v0           #v:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #v:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #v:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 17
    .end local v0           #v:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
