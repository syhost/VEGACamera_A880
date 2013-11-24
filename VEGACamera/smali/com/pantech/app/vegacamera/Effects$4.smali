.class Lcom/pantech/app/vegacamera/Effects$4;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$4;->this$0:Lcom/pantech/app/vegacamera/Effects;

    .line 1832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingDone()V
    .locals 3

    .prologue
    .line 1836
    const-string v0, "Effects"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$4;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    monitor-enter v1

    .line 1838
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$4;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isRecordingDone:Z

    .line 1839
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$4;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1837
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$4;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/pantech/app/vegacamera/Effects;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->access$13(Lcom/pantech/app/vegacamera/Effects;II)V

    .line 1843
    return-void

    .line 1837
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
