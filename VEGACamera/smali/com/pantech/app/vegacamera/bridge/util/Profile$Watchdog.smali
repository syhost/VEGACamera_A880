.class Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessRunnable:Ljava/lang/Runnable;

.field private mProfileData:Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog$1;-><init>(Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    .line 67
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/ProfileData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProfileData:Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Watchdog Handler"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->processList()V

    return-void
.end method

.method private findEntry(Ljava/lang/Thread;)Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    .locals 3
    .parameter "thread"

    .prologue
    .line 139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 144
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;

    .line 141
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-eq v2, p1, :cond_0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processList()V
    .locals 9

    .prologue
    .line 101
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 122
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 106
    .local v0, currentTime:I
    const/4 v4, 0x0

    .line 108
    .local v4, nextWakeTime:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    sub-int v5, v4, v0

    int-to-long v1, v5

    .line 121
    .local v1, delay:J
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 108
    .end local v1           #delay:J
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;

    .line 109
    .local v3, entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    iget v6, v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->wakeTime:I

    if-le v0, v6, :cond_3

    .line 110
    iget v6, v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->wakeTime:I

    iget v7, v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->cycleTime:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->wakeTime:I

    .line 112
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->sampleStack(Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;)V

    .line 115
    :cond_3
    iget v6, v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->wakeTime:I

    if-le v6, v4, :cond_1

    .line 116
    iget v4, v3, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->wakeTime:I

    goto :goto_1
.end method

.method private sampleStack(Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;)V
    .locals 5
    .parameter "entry"

    .prologue
    .line 125
    iget-object v3, p1, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 126
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 127
    .local v2, stack:[Ljava/lang/StackTraceElement;
    array-length v4, v2

    new-array v1, v4, [Ljava/lang/String;

    .line 128
    .local v1, lines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 131
    iget-boolean v4, p1, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->isHolding:Z

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p1, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_1
    return-void

    .line 129
    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProfileData:Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

    invoke-virtual {v4, v1}, Lcom/pantech/app/vegacamera/bridge/util/ProfileData;->addSample([Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addWatchEntry(Ljava/lang/Thread;I)V
    .locals 6
    .parameter "thread"
    .parameter "cycleTime"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;-><init>(Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;)V

    .line 77
    .local v0, e:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    iput-object p1, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 78
    iput p2, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->cycleTime:I

    .line 79
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 80
    .local v1, firstDelay:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->wakeTime:I

    .line 81
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 76
    .end local v0           #e:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    .end local v1           #firstDelay:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized commit(Ljava/lang/Thread;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 169
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    .line 172
    .local v2, stacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 175
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->isHolding:Z

    .line 176
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    .end local v1           #i:I
    .end local v2           #stacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 173
    .restart local v0       #entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    .restart local v1       #i:I
    .restart local v2       #stacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProfileData:Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/bridge/util/ProfileData;->addSample([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized drop(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 181
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->isHolding:Z

    .line 184
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProfileData:Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/util/ProfileData;->dumpToFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hold(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->isHolding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0           #entry:Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllWatchEntries()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWatchEntry(Ljava/lang/Thread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 92
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/bridge/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->mProfileData:Lcom/pantech/app/vegacamera/bridge/util/ProfileData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/ProfileData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
