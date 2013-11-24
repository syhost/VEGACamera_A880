.class Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;
.super Ljava/lang/Thread;
.source "ImpleBestFaceShotCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private mRequestPending:Z

.field private mStop:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 306
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->start()V

    .line 307
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->mStop:Z

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 2
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 312
    move v0, p4

    .line 313
    .local v0, tmp:I
    move p4, p5

    .line 314
    move p5, v0

    .line 316
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->mRequestPending:Z

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 366
    monitor-exit p0

    return-void

    .line 352
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 354
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->mRequestPending:Z

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
