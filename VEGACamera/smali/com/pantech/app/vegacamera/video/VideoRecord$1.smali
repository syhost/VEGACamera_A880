.class Lcom/pantech/app/vegacamera/video/VideoRecord$1;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RecordingStart()V
    .locals 5

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitRecorder()Z

    .line 282
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->StartRecording()V

    .line 283
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    const-wide/16 v3, 0x898

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 284
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    const-wide/16 v3, 0x898

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] StartRecordingThread failed RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    goto :goto_0
.end method

.method public RecordingStop()V
    .locals 4

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->_MediaRecorderStop()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$7(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    .line 295
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReleaseMediaRecorder()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$8(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] stop recording fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$1;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/temp.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_DeleteVideoFile(Ljava/lang/String;)V

    goto :goto_0
.end method
