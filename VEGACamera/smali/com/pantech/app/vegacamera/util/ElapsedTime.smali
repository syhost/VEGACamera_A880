.class public Lcom/pantech/app/vegacamera/util/ElapsedTime;
.super Ljava/lang/Object;
.source "ElapsedTime.java"


# instance fields
.field private elapsed:J

.field private running:Z

.field private startTime:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    .line 5
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->stopTime:J

    .line 6
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->running:Z

    .line 3
    return-void
.end method


# virtual methods
.method public getElapsedTimeMicro()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 26
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->running:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    .line 31
    :goto_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    return-wide v0

    .line 29
    :cond_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->stopTime:J

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    goto :goto_0
.end method

.method public getElapsedTimeMilli()J
    .locals 6

    .prologue
    const-wide/32 v4, 0xf4240

    .line 35
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->running:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    .line 40
    :goto_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    return-wide v0

    .line 38
    :cond_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->stopTime:J

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->elapsed:J

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    .line 21
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->stopTime:J

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->running:Z

    .line 23
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->running:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->startTime:J

    .line 12
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->running:Z

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/util/ElapsedTime;->stopTime:J

    .line 17
    return-void
.end method
