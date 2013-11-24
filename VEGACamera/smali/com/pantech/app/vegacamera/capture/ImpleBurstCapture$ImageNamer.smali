.class Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;
.super Ljava/lang/Thread;
.source "ImpleBurstCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mHeight:I

.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->start()V

    .line 308
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->cleanOldUri()V

    return-void
.end method

.method private cleanOldUri()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 6

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mTitle:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mDateTaken:J

    iget v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/vegacamera/util/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mUri:Landroid/net/Uri;

    .line 379
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mRequestPending:Z

    if-nez v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mUri:Landroid/net/Uri;

    .line 338
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-object v0

    .line 330
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 2
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 313
    move v0, p4

    .line 314
    .local v0, tmp:I
    move p4, p5

    .line 315
    move p5, v0

    .line 317
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mRequestPending:Z

    .line 318
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 319
    iput-wide p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mDateTaken:J

    .line 320
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mWidth:I

    .line 321
    iput p5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mHeight:I

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 353
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 355
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0

    .line 361
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->cleanOldUri()V

    .line 362
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->generateUri()V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->mRequestPending:Z

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
