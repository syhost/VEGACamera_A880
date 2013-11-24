.class public Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    .line 335
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mTask:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mTask:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    .locals 3
    .parameter "jc"

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;-><init>(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 357
    :goto_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mEntry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 365
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mEntry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 359
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setResult(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mEntry:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
