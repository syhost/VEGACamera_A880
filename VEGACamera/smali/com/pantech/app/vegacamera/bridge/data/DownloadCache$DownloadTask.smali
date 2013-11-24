.class Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
.implements Lcom/pantech/app/vegacamera/bridge/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Ljava/io/File;",
        ">;",
        "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mProxySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    .line 264
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    .line 265
    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;

    return-void
.end method


# virtual methods
.method public addProxy(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 279
    #setter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mTask:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;
    invoke-static {p1, p0}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->access$0(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;)V

    .line 280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public onFutureDone(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Ljava/io/File;>;"
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 285
    .local v2, file:Ljava/io/File;
    const-wide/16 v3, 0x0

    .line 286
    .local v3, id:J
    if-eqz v2, :cond_0

    .line 287
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    #calls: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v6, v7, v2}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$2(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v3

    .line 290
    :cond_0
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/Future;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 309
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :try_start_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mEntryMap:Lcom/pantech/app/vegacamera/bridge/common/LruCache;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$3(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Lcom/pantech/app/vegacamera/bridge/common/LruCache;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    if-eqz v2, :cond_2

    .line 299
    :try_start_1
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    invoke-direct {v1, v6, v3, v4, v2}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;-><init>(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .local v1, entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :try_start_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mEntryMap:Lcom/pantech/app/vegacamera/bridge/common/LruCache;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$3(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Lcom/pantech/app/vegacamera/bridge/common/LruCache;

    move-result-object v6

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v9, v1}, Lcom/pantech/app/vegacamera/bridge/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 297
    .end local v1           #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :cond_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    :try_start_4
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 306
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    const/16 v8, 0x10

    #calls: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$4(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;I)V

    .line 295
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 300
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .restart local v1       #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 297
    .end local v1           #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :catchall_1
    move-exception v6

    :goto_3
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6

    .line 303
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    .line 304
    .local v5, proxy:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;
    invoke-virtual {v5, v0}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->setResult(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 297
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .end local v5           #proxy:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;
    .restart local v1       #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    goto :goto_3
.end method

.method public removeProxy(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 270
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    monitor-exit v1

    .line 275
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/io/File;
    .locals 10
    .parameter "jc"

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 313
    invoke-interface {p1, v4}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    .line 314
    const/4 v2, 0x0

    .line 316
    .local v2, tempFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, url:Ljava/net/URL;
    const-string v4, "cache"

    const-string v5, ".tmp"

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$0(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 319
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    .line 320
    invoke-static {p1, v3, v2}, Lcom/pantech/app/vegacamera/bridge/data/DownloadUtils;->requestDownload(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    .line 321
    .local v0, downloaded:Z
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    if-eqz v0, :cond_1

    .line 327
    invoke-interface {p1, v9}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    move-object v4, v2

    .line 331
    .end local v0           #downloaded:Z
    .end local v3           #url:Ljava/net/URL;
    :goto_0
    return-object v4

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "DownloadCache"

    const-string v5, "fail to download %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    invoke-interface {p1, v9}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    .line 329
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 331
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v4

    .line 327
    invoke-interface {p1, v9}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    .line 328
    throw v4

    .line 327
    .restart local v0       #downloaded:Z
    .restart local v3       #url:Ljava/net/URL;
    :cond_1
    invoke-interface {p1, v9}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
