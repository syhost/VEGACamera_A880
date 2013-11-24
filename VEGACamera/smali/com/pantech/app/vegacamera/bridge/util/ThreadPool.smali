.class public Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;,
        Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;,
        Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;,
        Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContextStub;,
        Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;,
        Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext; = null

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I


# instance fields
.field mCpuCounter:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContextStub;-><init>(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContextStub;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->mCpuCounter:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    .line 41
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->mNetworkCounter:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    .line 87
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;

    const-string v8, "thread-pool"

    .line 89
    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 87
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    return-void
.end method


# virtual methods
.method public submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;)Lcom/pantech/app/vegacamera/bridge/util/Future;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, job:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
            "<TT;>;)",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, job:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job<TT;>;"
    .local p2, listener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;,"Lcom/pantech/app/vegacamera/bridge/util/FutureListener<TT;>;"
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;-><init>(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)V

    .line 96
    .local v0, w:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-object v0
.end method
