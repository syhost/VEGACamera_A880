.class public Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;
.super Ljava/lang/Object;
.source "IdentityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mWeakMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 30
    return-void
.end method

.method private cleanUpWeakMap()V
    .locals 3

    .prologue
    .line 43
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache<TK;TV;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;

    .line 44
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 48
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;

    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->cleanUpWeakMap()V

    .line 58
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 57
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keys()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 71
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TK;>;"
    monitor-exit p0

    return-object v0

    .line 70
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TK;>;"
    .end local v1           #set:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->cleanUpWeakMap()V

    .line 52
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 51
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry;,"Lcom/pantech/app/vegacamera/bridge/util/IdentityCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
