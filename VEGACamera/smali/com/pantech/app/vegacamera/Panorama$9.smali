.class Lcom/pantech/app/vegacamera/Panorama$9;
.super Ljava/lang/Thread;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->_ReportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 1142
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Panorama$9;)Lcom/pantech/app/vegacamera/Panorama;
    .locals 1
    .parameter

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1145
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$39(Lcom/pantech/app/vegacamera/Panorama;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1167
    return-void

    .line 1146
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$0(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->bCancelComputation:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$40(Lcom/pantech/app/vegacamera/Panorama;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->reportProgress(ZZ)I

    move-result v1

    .line 1148
    .local v1, progress:I
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->objWait:Ljava/lang/Object;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$41(Lcom/pantech/app/vegacamera/Panorama;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->objWait:Ljava/lang/Object;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$41(Lcom/pantech/app/vegacamera/Panorama;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1148
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/vegacamera/Panorama$9$1;

    invoke-direct {v3, p0, v1}, Lcom/pantech/app/vegacamera/Panorama$9$1;-><init>(Lcom/pantech/app/vegacamera/Panorama$9;I)V

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
