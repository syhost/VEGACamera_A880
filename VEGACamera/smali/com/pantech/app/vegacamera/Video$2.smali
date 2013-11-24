.class Lcom/pantech/app/vegacamera/Video$2;
.super Lcom/pantech/app/vegacamera/video/VideoRecord;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Video;->SetOperHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Video;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    .line 1879
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public AbsInflateParentLayout()V
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_InflateModuleLayout()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$30(Lcom/pantech/app/vegacamera/Video;)V

    .line 1923
    return-void
.end method

.method public AbsRecordingStopComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1882
    const-string v0, "Video"

    const-string v1, "[Video] AbsRecordingStopComplete"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->bSkipFlingAfterRecord:Z
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Video;->access$24(Lcom/pantech/app/vegacamera/Video;Z)V

    .line 1884
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    .line 1891
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$25(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/video/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$25(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/video/VideoRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->RecordingCanceled:Z

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video;->_GotoQuickview()V

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Video;->access$26(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    .line 1896
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 1898
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_SetPreviewFrameLayoutAspectRatio()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$6(Lcom/pantech/app/vegacamera/Video;)V

    .line 1899
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_StartCameraMode()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$15(Lcom/pantech/app/vegacamera/Video;)V

    .line 1900
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video$2;->_InitializeMiscControls()V

    .line 1901
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/Video;->SetShotMode(Z)V

    .line 1903
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_AddScreenOnFlag()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$27(Lcom/pantech/app/vegacamera/Video;)V

    .line 1904
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_KeepIdleTimerOnAwhile()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$28(Lcom/pantech/app/vegacamera/Video;)V

    .line 1905
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$2;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 1908
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 1910
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->bLocalVoice:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$29(Lcom/pantech/app/vegacamera/Video;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$2;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/Util;->SetLocalVoice(Landroid/content/Context;Z)V

    .line 1912
    :cond_1
    return-void
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 1918
    return-void
.end method
