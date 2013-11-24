.class public final Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
.super Ljava/lang/Object;
.source "VolatileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/preference/VolatileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VolatilePrefEditor"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
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

.field final synthetic this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/preference/VolatileData;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mClear:Z

    return-void
.end method


# virtual methods
.method public Apply()Z
    .locals 9

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    monitor-enter v7

    .line 141
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 142
    .end local v2           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v3, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mClear:Z

    if-eqz v6, :cond_0

    .line 144
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    #getter for: Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/preference/VolatileData;->access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 145
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mClear:Z

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 157
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 142
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    const/4 v4, 0x1

    .line 140
    .local v4, returnValue:Z
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    return v4

    .line 147
    .end local v4           #returnValue:Z
    :cond_1
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 150
    .local v5, v:Ljava/lang/Object;
    if-ne v5, p0, :cond_2

    .line 151
    iget-object v8, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    #getter for: Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/preference/VolatileData;->access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #k:Ljava/lang/String;
    .end local v5           #v:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 153
    .end local v2           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #k:Ljava/lang/String;
    .restart local v3       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #v:Ljava/lang/Object;
    :cond_2
    :try_start_7
    iget-object v8, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    #getter for: Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/preference/VolatileData;->access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 140
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #k:Ljava/lang/String;
    .end local v3           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #v:Ljava/lang/Object;
    .restart local v2       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v6

    goto :goto_2
.end method

.method public Clear()Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mClear:Z

    .line 106
    monitor-exit p0

    return-object p0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Commit()Z
    .locals 9

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    monitor-enter v7

    .line 114
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    .end local v2           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v3, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :try_start_2
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mClear:Z

    if-eqz v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    #getter for: Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/preference/VolatileData;->access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 118
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mClear:Z

    .line 120
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 130
    iget-object v6, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 115
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    const/4 v4, 0x1

    .line 113
    .local v4, returnValue:Z
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    return v4

    .line 120
    .end local v4           #returnValue:Z
    :cond_1
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 123
    .local v5, v:Ljava/lang/Object;
    if-ne v5, p0, :cond_2

    .line 124
    iget-object v8, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    #getter for: Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/preference/VolatileData;->access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #k:Ljava/lang/String;
    .end local v5           #v:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 126
    .end local v2           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #k:Ljava/lang/String;
    .restart local v3       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #v:Ljava/lang/Object;
    :cond_2
    :try_start_7
    iget-object v8, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->this$0:Lcom/pantech/app/vegacamera/preference/VolatileData;

    #getter for: Lcom/pantech/app/vegacamera/preference/VolatileData;->mMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/preference/VolatileData;->access$0(Lcom/pantech/app/vegacamera/preference/VolatileData;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 113
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #k:Ljava/lang/String;
    .end local v3           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #v:Ljava/lang/Object;
    .restart local v2       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v6

    goto :goto_2
.end method

.method public PutBoolean(Ljava/lang/String;Z)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit p0

    return-object p0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public PutFloat(Ljava/lang/String;F)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit p0

    return-object p0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public PutInt(Ljava/lang/String;I)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit p0

    return-object p0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public PutLong(Ljava/lang/String;J)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit p0

    return-object p0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public PutString(Ljava/lang/String;Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit p0

    return-object p0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Remove(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;
    .locals 1
    .parameter "key"

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/preference/VolatileData$VolatilePrefEditor;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit p0

    return-object p0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
