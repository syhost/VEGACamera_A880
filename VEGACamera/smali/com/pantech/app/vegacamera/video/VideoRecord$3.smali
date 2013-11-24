.class Lcom/pantech/app/vegacamera/video/VideoRecord$3;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitRecorder()Z
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1428
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 1433
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    goto :goto_0

    .line 1444
    :cond_2
    const/16 v0, 0x326

    if-ne p2, v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$3;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
