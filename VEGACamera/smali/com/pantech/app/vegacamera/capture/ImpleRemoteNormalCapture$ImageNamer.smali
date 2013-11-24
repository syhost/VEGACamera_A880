.class Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;
.super Ljava/lang/Thread;
.source "ImpleRemoteNormalCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;
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
    .line 281
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 282
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->start()V

    .line 283
    return-void
.end method

.method private cleanOldUri()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 6

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mTitle:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mDateTaken:J

    iget v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/vegacamera/util/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mUri:Landroid/net/Uri;

    .line 354
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mStop:Z

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mTitle:Ljava/lang/String;
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
    .line 303
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mRequestPending:Z

    if-nez v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mUri:Landroid/net/Uri;

    .line 313
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-object v0

    .line 305
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    goto :goto_0

    .line 303
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
    .line 287
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 288
    move v0, p4

    .line 289
    .local v0, tmp:I
    move p4, p5

    .line 290
    move p5, v0

    .line 292
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mRequestPending:Z

    .line 293
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 294
    iput-wide p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mDateTaken:J

    .line 295
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mWidth:I

    .line 296
    iput p5, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mHeight:I

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 328
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 330
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0

    .line 336
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->cleanOldUri()V

    .line 337
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->generateUri()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->mRequestPending:Z

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
