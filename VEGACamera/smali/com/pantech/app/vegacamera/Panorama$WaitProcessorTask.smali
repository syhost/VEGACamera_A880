.class Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$0(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 175
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$0(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$0(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 188
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v4

    iget-boolean v4, v4, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_0

    .line 211
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/4 v5, 0x0

    #setter for: Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/Panorama;->access$2(Lcom/pantech/app/vegacamera/Panorama;Landroid/os/AsyncTask;)V

    .line 194
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$3(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_InitMosaicFrameProcessorIfNeeded()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$4(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 198
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$5(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->getWidth()I

    move-result v3

    .line 199
    .local v3, w:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$5(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->getHeight()I

    move-result v2

    .line 200
    .local v2, h:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v1

    .line 201
    .local v1, dispW:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v0

    .line 203
    .local v0, dispH:I
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 204
    if-le v1, v0, :cond_2

    .line 205
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ConfigMosaicPreview(II)V
    invoke-static {v4, v1, v0}, Lcom/pantech/app/vegacamera/Panorama;->access$6(Lcom/pantech/app/vegacamera/Panorama;II)V

    .line 210
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ConfigMosaicPreview(II)V
    invoke-static {v4, v0, v1}, Lcom/pantech/app/vegacamera/Panorama;->access$6(Lcom/pantech/app/vegacamera/Panorama;II)V

    goto :goto_1
.end method
