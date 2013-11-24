.class Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;
.super Landroid/os/Handler;
.source "VideoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 159
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitializeAfterDeviceOpen()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$0(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    goto :goto_0

    .line 163
    :sswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #setter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$1(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StartRecording()V

    goto :goto_0

    .line 168
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #setter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$1(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V

    goto :goto_0

    .line 172
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #setter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$1(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V

    goto :goto_0

    .line 176
    :sswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #setter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$1(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V

    goto :goto_0

    .line 188
    :sswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HANDLE_VIDEO_RECORD_TIME_TICK : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v2, v2, Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordTimeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordTimeCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordTimeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordTimeCount:I

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordingTime()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$3(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    goto :goto_0

    .line 198
    :sswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->unsigned32(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->UpdateRecordingFileSize(J)V

    goto :goto_0

    .line 203
    :sswitch_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HANDLE_VIDEO_RECORD_SCAN_COMPLETE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_FinishVideoRecord(Z)V

    goto :goto_0

    .line 209
    :sswitch_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HANDLE_VIDEO_RECORD_START_FAIL"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 211
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_FinishVideoRecord(Z)V

    goto/16 :goto_0

    .line 216
    :sswitch_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HANDLE_VIDEO_RECORD_STOP_FAIL"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_FinishVideoRecord(Z)V

    goto/16 :goto_0

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_1

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_1

    .line 229
    :sswitch_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 231
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 235
    :sswitch_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    const/16 v1, 0x68

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$4(Lcom/pantech/app/vegacamera/video/VideoRecord;II)V

    goto/16 :goto_0

    .line 239
    :sswitch_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTakingPicture:Z

    goto/16 :goto_0

    .line 244
    :sswitch_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_RegisterVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VideoCamera] _RegisterVideo() failed"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 254
    :sswitch_e
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateThumbNail()V

    .line 255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    goto/16 :goto_0

    .line 259
    :sswitch_f
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setRecordStartdone(Z)V

    goto/16 :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_7
        0x18 -> :sswitch_9
        0x19 -> :sswitch_c
        0x1a -> :sswitch_6
        0x1b -> :sswitch_d
        0x1c -> :sswitch_8
        0x21 -> :sswitch_f
        0x2e -> :sswitch_b
        0x3e -> :sswitch_a
        0x40 -> :sswitch_e
    .end sparse-switch

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
