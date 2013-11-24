.class public Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;
    }
.end annotation


# static fields
.field private static final CLEAN_THUMBNAIL:I = 0x1

.field private static sLastThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->cleanLastThumbnail()V

    return-void
.end method

.method private static declared-synchronized cleanLastThumbnail()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->sLastThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 5
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v2, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->sLastThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    if-eqz v3, :cond_0

    .line 35
    sget-object v3, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->sLastThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 37
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    const/4 v3, 0x0

    sput-object v3, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->sLastThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 38
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/pantech/app/vegacamera/util/Util;->IsUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    .end local v0           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized keep(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 50
    const-class v1, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->sLastThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 51
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v1

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
