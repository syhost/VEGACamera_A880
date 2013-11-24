.class Lcom/pantech/app/vegacamera/Effects$6;
.super Lcom/pantech/app/vegacamera/video/EffectsRecorder;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Effects;->SetOperHandler(I)V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    .line 2670
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public AbsInflateParentLayout()V
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_InflateModuleLayout()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$52(Lcom/pantech/app/vegacamera/Effects;)V

    .line 2726
    return-void
.end method

.method public AbsRecordingStopComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2673
    const-string v0, "Effects"

    const-string v1, "AbsRecordingStopComplete"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->bSkipFlingAfterRecord:Z
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/Effects;->access$46(Lcom/pantech/app/vegacamera/Effects;Z)V

    .line 2675
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    .line 2683
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->RecordingCanceled:Z

    if-nez v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_GotoQuickview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$36(Lcom/pantech/app/vegacamera/Effects;)V

    .line 2686
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_ReleaseEffectsRecorder()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$47(Lcom/pantech/app/vegacamera/Effects;)V

    .line 2688
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects$6;->_CloseCamera()V

    .line 2690
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->effectPreviewCondition:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_2

    .line 2691
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isEffectRecordingStopThreadFinished:Z

    if-nez v0, :cond_2

    .line 2692
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$48(Lcom/pantech/app/vegacamera/Effects;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2693
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Effects;->access$40(Lcom/pantech/app/vegacamera/Effects;Z)V

    .line 2694
    const-string v0, "Effects"

    const-string v1, "effectPreviewCondition.open()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->effectPreviewCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2717
    :cond_1
    :goto_0
    return-void

    .line 2699
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isEffectRecordingStopThreadFinished:Z

    .line 2701
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_3

    .line 2702
    const-string v0, "Effects"

    const-string v1, "absRecording() pause return"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 2715
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->bLocalVoice:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$51(Lcom/pantech/app/vegacamera/Effects;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2716
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetLocalVoice(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2706
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$49(Lcom/pantech/app/vegacamera/Effects;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2707
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$49(Lcom/pantech/app/vegacamera/Effects;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 2709
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$6;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_RecordingStop_LayoutInflate()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$50(Lcom/pantech/app/vegacamera/Effects;)V

    .line 2710
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$6;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_1
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 2721
    return-void
.end method
