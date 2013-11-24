.class Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyBroker"
.end annotation


# instance fields
.field private mNotifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 321
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    .line 325
    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 336
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    .line 334
    .local v0, notifier:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->onChange(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v0           #notifier:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerNotifier(Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;)V
    .locals 2
    .parameter "notifier"

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
