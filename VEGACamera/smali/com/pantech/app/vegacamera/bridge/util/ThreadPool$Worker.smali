.class Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/pantech/app/vegacamera/bridge/util/Future;
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/pantech/app/vegacamera/bridge/util/Future",
        "<TT;>;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    .local p2, job:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job<TT;>;"
    .local p3, listener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;,"Lcom/pantech/app/vegacamera/bridge/util/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->this$0:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mJob:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;

    .line 117
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    .line 118
    return-void
.end method

.method private acquireResource(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;)Z
    .locals 1
    .parameter "counter"

    .prologue
    .line 223
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    :goto_0
    monitor-enter p0

    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    .line 226
    monitor-exit p0

    const/4 v0, 0x0

    .line 249
    :goto_1
    return v0

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-enter p1

    .line 232
    :try_start_1
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 233
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;->value:I

    .line 234
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    monitor-enter p0

    .line 246
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    .line 245
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 249
    const/4 v0, 0x1

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 237
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 231
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 245
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 238
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;
    .locals 1
    .parameter "mode"

    .prologue
    .line 212
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->this$0:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->mCpuCounter:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->this$0:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->mNetworkCounter:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;)V
    .locals 1
    .parameter "counter"

    .prologue
    .line 253
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 254
    :try_start_0
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;->value:I

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p1

    .line 257
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 146
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsCancelled:Z

    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    .line 150
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mWaitOnResource:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mCancelListener:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mCancelListener:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsDone:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 170
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 168
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 160
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 164
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    const/4 v2, 0x1

    .line 122
    const/4 v1, 0x0

    .line 126
    .local v1, result:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mJob:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 135
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->setMode(I)Z

    .line 136
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsDone:Z

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    invoke-interface {v2, p0}, Lcom/pantech/app/vegacamera/bridge/util/FutureListener;->onFutureDone(Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    .line 142
    :cond_1
    return-void

    .line 129
    .restart local v1       #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    .end local v0           #ex:Ljava/lang/Throwable;
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 186
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mCancelListener:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    .line 187
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mCancelListener:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mCancelListener:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x0

    .line 194
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->modeToCounter(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 195
    .local v0, rc:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->releaseResource(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;)V

    .line 197
    :cond_0
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mMode:I

    .line 200
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->modeToCounter(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_2

    .line 202
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->acquireResource(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    :goto_0
    return v1

    .line 205
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->mMode:I

    .line 208
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 180
    .local p0, this:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;,"Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker<TT;>;"
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Worker;->get()Ljava/lang/Object;

    .line 181
    return-void
.end method
