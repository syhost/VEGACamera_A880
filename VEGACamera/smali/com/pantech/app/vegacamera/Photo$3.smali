.class Lcom/pantech/app/vegacamera/Photo$3;
.super Lcom/pantech/app/vegacamera/video/VideoRecord;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Photo;->SetOperHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    .line 2249
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public AbsInflateParentLayout()V
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->_InflateModuleLayout()V

    .line 2294
    return-void
.end method

.method public AbsRecordingStopComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2252
    const-string v0, "Photo"

    const-string v1, "[Photo] AbsRecordingStopComplete"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #setter for: Lcom/pantech/app/vegacamera/Photo;->bSkipFlingAfterRecord:Z
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Photo;->access$15(Lcom/pantech/app/vegacamera/Photo;Z)V

    .line 2254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$16(Lcom/pantech/app/vegacamera/Photo;)Lcom/pantech/app/vegacamera/video/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$16(Lcom/pantech/app/vegacamera/Photo;)Lcom/pantech/app/vegacamera/video/VideoRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->RecordingCanceled:Z

    if-nez v0, :cond_0

    .line 2262
    const-string v0, "Photo"

    const-string v1, "[Photo] AbsRecordingStopComplete : _GotoQuickview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->_GotoQuickview()V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Photo;->access$17(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    .line 2267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 2269
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_SetPreviewFrameLayoutAspectRatio()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$2(Lcom/pantech/app/vegacamera/Photo;)V

    .line 2270
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_StartCameraMode()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$9(Lcom/pantech/app/vegacamera/Photo;)V

    .line 2271
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo$3;->_InitializeMiscControls()V

    .line 2273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/Photo;->SetShotMode(Z)V

    .line 2275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_AddScreenOnFlag()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$18(Lcom/pantech/app/vegacamera/Photo;)V

    .line 2276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->_KeepIdleTimerOnAwhile()V

    .line 2277
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$3;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 2280
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 2282
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->bLocalVoice:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$19(Lcom/pantech/app/vegacamera/Photo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$3;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/Util;->SetLocalVoice(Landroid/content/Context;Z)V

    .line 2284
    :cond_1
    return-void

    .line 2254
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 2289
    return-void
.end method
