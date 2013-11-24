.class Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/Future;
.implements Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSetSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery.MultiSetSync"


# instance fields
.field private final mFutures:[Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)V
    .locals 5
    .parameter
    .parameter "sets"
    .parameter "listener"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 286
    const/4 v2, -0x1

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 291
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;

    .line 292
    array-length v2, p2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 293
    array-length v2, p2

    new-array v2, v2, [Lcom/pantech/app/vegacamera/bridge/util/Future;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 295
    monitor-enter p0

    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    array-length v1, p2

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 295
    monitor-exit p0

    .line 301
    return-void

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/pantech/app/vegacamera/bridge/util/Future;

    aget-object v3, p2, v0

    invoke-virtual {v3, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->requestSync(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v3

    aput-object v3, v2, v0

    .line 298
    const-string v2, "Gallery.MultiSetSync"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  request sync: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 308
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/pantech/app/vegacamera/bridge/util/Future;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    .line 310
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mResult:I

    if-gez v1, :cond_0

    .line 311
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 308
    :cond_2
    :try_start_2
    aget-object v0, v2, v1

    .line 309
    .local v0, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->waitDone()V

    .line 327
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V
    .locals 4
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    const/4 v1, 0x2

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, listener:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;
    monitor-enter p0

    .line 345
    if-ne p2, v1, :cond_0

    .line 346
    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 347
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 348
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    if-nez v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 352
    :cond_1
    const-string v1, "Gallery.MultiSetSync"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSyncDone: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #pending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    if-eqz v0, :cond_2

    .line 355
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;->onSyncDone(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V

    .line 356
    :cond_2
    return-void

    .line 344
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized waitDone()V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :goto_1
    monitor-exit p0

    return-void

    .line 334
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "Gallery.MultiSetSync"

    const-string v2, "waitDone() interrupted"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 333
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
