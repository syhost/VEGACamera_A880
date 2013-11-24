.class public abstract Lcom/android/internal/hardware/SkyThreadHelper;
.super Ljava/lang/Thread;
.source "SkyThreadHelper.java"


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private mIsReceiveStopSignal:Z

.field private mIsReceiveSuspendSignal:Z

.field private mIsRunning:Z

.field private mIsSuspend:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    const-string v0, "SkyThreadHelper"

    iput-object v0, p0, Lcom/android/internal/hardware/SkyThreadHelper;->LOG_TAG:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->DEBUG:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    .line 17
    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveStopSignal:Z

    .line 18
    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveSuspendSignal:Z

    .line 19
    return-void
.end method


# virtual methods
.method protected final enterSuspend(I)V
    .locals 6
    .parameter "waitMS"

    .prologue
    .line 62
    iget-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    if-nez v4, :cond_0

    .line 98
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    if-nez v4, :cond_2

    .line 71
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    .line 72
    if-lez p1, :cond_3

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    .local v2, start:J
    const-wide/16 v0, 0x0

    .line 76
    .local v0, cal:J
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    if-eqz v4, :cond_2

    .line 77
    int-to-long v4, p1

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 79
    int-to-long v4, p1

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 80
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    .line 90
    .end local v0           #cal:J
    .end local v2           #start:J
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    move-exception v4

    goto :goto_0

    .line 85
    :cond_3
    :goto_1
    :try_start_3
    iget-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final exitSuspend()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    .line 106
    .local v0, bTryWake:Z
    iget-boolean v2, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    if-nez v2, :cond_0

    .line 124
    :goto_0
    return v1

    .line 112
    :cond_0
    monitor-enter p0

    .line 113
    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    if-ne v1, v2, :cond_1

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsSuspend:Z

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveSuspendSignal:Z

    .line 119
    :cond_1
    monitor-exit p0

    move v1, v0

    .line 124
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final isReceiveStopSignal()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveStopSignal:Z

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    const/4 v0, 0x1

    .line 136
    .local v0, bDoWork:Z
    iput-boolean v4, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    .line 137
    iget-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveStopSignal:Z

    .line 138
    .local v1, bRecvStopSignal:Z
    :goto_0
    if-ne v4, v0, :cond_1

    if-nez v1, :cond_1

    .line 139
    iget-boolean v2, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveSuspendSignal:Z

    .line 140
    .local v2, bRecvSuspendSignal:Z
    if-eqz v2, :cond_0

    .line 141
    iput-boolean v3, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveSuspendSignal:Z

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/internal/hardware/SkyThreadHelper;->enterSuspend(I)V

    .line 146
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveStopSignal:Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/hardware/SkyThreadHelper;->work()Z

    move-result v0

    goto :goto_1

    .line 148
    .end local v2           #bRecvSuspendSignal:Z
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    .line 152
    return-void
.end method

.method public final stopSignal()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveStopSignal:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/internal/hardware/SkyThreadHelper;->exitSuspend()Z

    .line 34
    return-void
.end method

.method public final suspendSignal()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    const/4 v0, 0x0

    .line 46
    .local v0, bRet:Z
    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsRunning:Z

    if-ne v2, v1, :cond_0

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyThreadHelper;->mIsReceiveSuspendSignal:Z

    .line 49
    const/4 v0, 0x1

    .line 51
    :cond_0
    monitor-exit p0

    .line 55
    return v0

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract work()Z
.end method
