.class Lcom/pantech/app/vegacamera/Effects$ImageNamer;
.super Ljava/lang/Thread;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
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
    .line 3151
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3152
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->start()V

    .line 3153
    return-void
.end method

.method private cleanOldUri()V
    .locals 2

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 3234
    :goto_0
    return-void

    .line 3232
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 6

    .prologue
    .line 3224
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mTitle:Ljava/lang/String;

    .line 3225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mDateTaken:J

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/vegacamera/util/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mUri:Landroid/net/Uri;

    .line 3226
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 3218
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mStop:Z

    .line 3219
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
    monitor-exit p0

    return-void

    .line 3218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mTitle:Ljava/lang/String;
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
    .locals 3

    .prologue
    .line 3173
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mRequestPending:Z

    if-nez v2, :cond_0

    .line 3183
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mUri:Landroid/net/Uri;

    .line 3184
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3185
    monitor-exit p0

    return-object v1

    .line 3175
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3176
    :catch_0
    move-exception v0

    .line 3178
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3173
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 2
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 3157
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 3158
    move v0, p4

    .line 3159
    .local v0, tmp:I
    move p4, p5

    .line 3160
    move p5, v0

    .line 3162
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mRequestPending:Z

    .line 3163
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 3164
    iput-wide p2, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mDateTaken:J

    .line 3165
    iput p4, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mWidth:I

    .line 3166
    iput p5, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mHeight:I

    .line 3167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3168
    monitor-exit p0

    return-void

    .line 3157
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 3197
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mStop:Z

    if-eqz v1, :cond_0

    .line 3213
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3214
    monitor-exit p0

    return-void

    .line 3199
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 3201
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3202
    :catch_0
    move-exception v0

    .line 3204
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3197
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3208
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->cleanOldUri()V

    .line 3209
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->generateUri()V

    .line 3210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->mRequestPending:Z

    .line 3211
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
