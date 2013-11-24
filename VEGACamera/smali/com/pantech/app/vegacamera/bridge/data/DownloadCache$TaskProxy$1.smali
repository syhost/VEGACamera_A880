.class Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->get(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;->this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;->this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mTask:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->access$1(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;->this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DownloadTask;->removeProxy(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;)V

    .line 351
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;->this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;->this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    #setter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;->access$2(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;Z)V

    .line 353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy$1;->this$1:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 351
    monitor-exit v1

    .line 355
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
