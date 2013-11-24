.class public abstract Lcom/pantech/app/vegacamera/video/EffectsRecorder;
.super Lcom/pantech/app/vegacamera/video/VideoRecord;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;,
        Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectsRecorder"


# instance fields
.field private mCaptureRate:D

.field private mEffectsListener:Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOutputFile:Ljava/lang/String;

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field public tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mCaptureRate:D

    .line 56
    iput-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mMaxFileSize:J

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mMaxDurationMs:I

    .line 62
    iput-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mEffectsListener:Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;

    .line 681
    new-instance v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;-><init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    .line 50
    return-void
.end method

.method private _SetCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting time lapse capture rate to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mCaptureRate:D

    .line 305
    return-void

    .line 296
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized _SetMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    iput p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 284
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized _SetMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 270
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _SetOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 262
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 263
    return-void

    .line 254
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _SetOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 249
    return-void

    .line 240
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _SetProfile(Landroid/media/CamcorderProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 166
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProfile mProfile :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 159
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/video/EffectsRecorder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mEffectsListener:Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder$5;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$5;-><init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method


# virtual methods
.method public AbsInflateParentLayout()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public abstract AbsRecordingStopComplete()V
.end method

.method protected Device_StartRecording()V
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_InitRecorder()Z

    .line 424
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "StartRecording ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 434
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 435
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "No output file name or descriptor provided!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 427
    :pswitch_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Already recording, cannot begin anew!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    :pswitch_1
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "startRecording called on an already released recorder!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 442
    :cond_0
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v9}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v9

    const-string v10, "flip"

    invoke-virtual {v9, v10}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 443
    .local v2, flip:Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_GetVideoFlip()Ljava/lang/String;

    move-result-object v9

    const-string v10, "flip-v"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 446
    const-string v9, "vertical"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v9, "horizontal"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v9, "EffectsRecorder"

    const-string v10, "Device_StartRecording FlipFilter flip-v"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v9}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v9

    const-string v10, "recorder"

    invoke-virtual {v9, v10}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v4

    .line 461
    .local v4, recorder:Landroid/filterfw/core/Filter;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v9, :cond_6

    .line 462
    const-string v9, "outputFileDescriptor"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    :goto_1
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v9

    const-string v10, "pref_setting_voice_record"

    .line 469
    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/pantech/app/vegacamera/R$string;->pref_setting_voice_record_default:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 468
    invoke-virtual {v9, v10, v11}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, inclusionVoiceRecording:Ljava/lang/String;
    const-string v9, "on"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 473
    :try_start_0
    const-string v9, "recordingProfile"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    const-string v9, "audioSource"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    const-string v9, "videoEncoder"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v9, "framerate"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v9, "outputFormat"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v9, "videoBitrate"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Voice Rec. Off framerate : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 485
    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 484
    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_2
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v9

    if-ne v9, v0, :cond_8

    .line 496
    iget v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    add-int/lit8 v9, v9, 0x5a

    rem-int/lit16 v5, v9, 0x168

    .line 500
    .local v5, setOrientationHint:I
    :goto_3
    const-string v9, "orientationHint"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "orientationHint setOrientationHint:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-wide v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_9

    .line 507
    .local v0, captureTimeLapse:Z
    :goto_4
    if-eqz v0, :cond_a

    .line 508
    const-wide/high16 v8, 0x3ff0

    iget-wide v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mCaptureRate:D

    div-double v6, v8, v10

    .line 509
    .local v6, timeBetweenFrameCapture:D
    const-string v8, "timelapseRecordingIntervalUs"

    const-wide v9, 0x412e848000000000L

    mul-double/2addr v9, v6

    double-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    .end local v6           #timeBetweenFrameCapture:D
    :goto_5
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v8, :cond_2

    .line 515
    const-string v8, "infoListener"

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v4, v8, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    :cond_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v8, :cond_3

    .line 518
    const-string v8, "errorListener"

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v4, v8, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    :cond_3
    const-string v8, "maxFileSize"

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v8, "maxDurationMs"

    iget v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->recordingStart()V

    .line 526
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    .line 527
    const-string v8, "EffectsRecorder"

    const-string v9, "StartRecording completed"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void

    .line 449
    .end local v0           #captureTimeLapse:Z
    .end local v3           #inclusionVoiceRecording:Ljava/lang/String;
    .end local v4           #recorder:Landroid/filterfw/core/Filter;
    .end local v5           #setOrientationHint:I
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_GetVideoFlip()Ljava/lang/String;

    move-result-object v9

    const-string v10, "flip-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 450
    const-string v9, "vertical"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const-string v9, "horizontal"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    const-string v9, "EffectsRecorder"

    const-string v10, "Device_StartRecording FlipFilter flip-h"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :cond_5
    const-string v9, "vertical"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    const-string v9, "horizontal"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    const-string v9, "EffectsRecorder"

    const-string v10, "Device_StartRecording FlipFilter off"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    .restart local v4       #recorder:Landroid/filterfw/core/Filter;
    :cond_6
    const-string v9, "outputFile"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 475
    .restart local v3       #inclusionVoiceRecording:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "EffectsRecorder"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "recordingProfile exception = ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 487
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    const-string v9, "recordingProfile"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v9, "audioSource"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Voice Rec. On framerate : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 491
    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 490
    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 498
    :cond_8
    iget v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    add-int/lit16 v9, v9, 0x10e

    rem-int/lit16 v5, v9, 0x168

    .restart local v5       #setOrientationHint:I
    goto/16 :goto_3

    :cond_9
    move v0, v8

    .line 506
    goto/16 :goto_4

    .line 511
    .restart local v0       #captureTimeLapse:Z
    :cond_a
    const-string v8, "timelapseRecordingIntervalUs"

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;Landroid/filterfw/core/GraphRunner;)V
    .locals 3
    .parameter "activity"
    .parameter "parent"
    .parameter "data"
    .parameter "runner"

    .prologue
    .line 101
    iput-object p4, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->InitVideo(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 103
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init mRunner:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public InitVideo(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 4
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    const-string v0, "EffectsRecorder"

    const-string v1, "[EffectsRecorder] Init()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 109
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRootView:Landroid/view/View;

    .line 110
    iput-object p3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->recordSync:Ljava/lang/Object;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordingStartTime:J

    .line 113
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->RecordingCanceled:Z

    .line 114
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mTakingPicture:Z

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->setRecordStartdone(Z)V

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    new-instance v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;-><init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setRecordingListener(Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->record:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->setVideoRecordViewGroup(Landroid/view/ViewGroup;)V

    .line 137
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_CreateLayoutInstance()V

    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->EnterLightsOutMode(Landroid/view/Window;)V

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 140
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view group count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->getVideoRecordViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->VideoRecordingOper()V

    .line 142
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_InitializeMiscControls()V

    .line 143
    return-void
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 69
    return-void
.end method

.method public VideoRecordingOper()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_ReadVideoProfile()V

    .line 175
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_GetDesiredPreviewSize()V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->iPreviewWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->iPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 178
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetVideoParameters(J)V

    .line 179
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OTHERS:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetVideoParameters(J)V

    .line 181
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoRecordingOper width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mContentResolver:Landroid/content/ContentResolver;

    .line 184
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_StartRecording()V

    .line 186
    :cond_0
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 146
    const-string v0, "EffectsRecorder"

    const-string v1, "[VideoRecord] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 154
    return-void
.end method

.method protected _FinishVideoRecord(Z)V
    .locals 2
    .parameter "bReturn"

    .prologue
    .line 738
    const-string v0, "EffectsRecorder"

    const-string v1, "Effect_FinishVideoRecord"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->CloseVideoFileDescriptor()V

    .line 740
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Stop()V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_DestroyLayoutInstance()V

    .line 744
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_ReleaseThreads()V

    .line 745
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_VideoRecordEnded(Z)V

    .line 746
    return-void
.end method

.method protected _InitRecorder()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 348
    const-string v3, "EffectsRecorder"

    const-string v4, "_InitEffectsRecorder()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iput v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->recSizeUpdateCount:I

    .line 354
    iput v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->recordingSizePrev:I

    .line 355
    iput v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->updateRecordTimeCount:I

    .line 357
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetOutputFile(Ljava/io/FileDescriptor;)V

    .line 364
    :goto_0
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InitEffectsRecorder() GetDeviceState : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetCaptureRate(D)V

    .line 368
    iget v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->maxVideoDuration_Ms:I

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetMaxDuration(I)V

    .line 370
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_CheckMMSRecordingSize()V

    .line 371
    iget-wide v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->maxFileSize:J

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->requestedSizeLimit:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_GetAdjustedFileSize(JJ)J

    move-result-wide v0

    .line 372
    .local v0, setMaxFileSize:J
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetMaxFileSize(J)V

    .line 374
    new-instance v3, Lcom/pantech/app/vegacamera/video/EffectsRecorder$3;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$3;-><init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 401
    new-instance v3, Lcom/pantech/app/vegacamera/video/EffectsRecorder$4;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$4;-><init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 413
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetProfile(Landroid/media/CamcorderProfile;)V

    .line 417
    const/4 v3, 0x1

    return v3

    .line 360
    .end local v0           #setMaxFileSize:J
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_CreateVideoPath()V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/temp.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, tempFilePath:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_SetOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _ReadVideoProfile()V
    .locals 8

    .prologue
    .line 202
    const-string v5, "EffectsRecorder"

    const-string v6, "[EffectsRecord] _ReadVideoProfile()"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x0

    .line 206
    .local v2, quality:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.videoQuality"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, extraVideoQuality:I
    if-ltz v1, :cond_0

    const/4 v5, 0x7

    if-gt v1, v5, :cond_0

    .line 209
    move v2, v1

    .line 223
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->quality:I

    if-eq v5, v2, :cond_2

    .line 227
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_2
    return-void

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 212
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->mms_resolution:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, videoQuality:Ljava/lang/String;
    sget-object v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 214
    goto :goto_0

    .line 218
    .end local v3           #videoQuality:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->effects_video_size:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, videoSize:Ljava/lang/String;
    const-string v5, "EffectsRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[VideoRecord] _ReadVideoProfile videoSize:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 228
    .end local v4           #videoSize:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method protected _ReleaseThreads()V
    .locals 2

    .prologue
    .line 750
    const-string v0, "EffectsRecorder"

    const-string v1, "[VideoRecord] _ReleaseThreads()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_WaitRecordingStartThread()V

    .line 754
    return-void
.end method

.method protected _StopVideoRecording(Z)V
    .locals 2
    .parameter "stop"

    .prologue
    .line 73
    const-string v0, "EffectsRecorder"

    const-string v1, "[EffectsRecorder] _StopVideoRecording()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;-><init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;Z)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->start()V

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    iget v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    add-int/lit16 v1, v1, 0x10e

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 80
    :cond_1
    return-void
.end method

.method protected _TakeLiveSnapshot()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 640
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v3

    const/4 v6, 0x6

    if-ne v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mTakingPicture:Z

    if-eqz v3, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v3, "EffectsRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_TakeLiveSnapshot   "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mTakingPicture:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    .line 647
    const-string v6, "EffectCaptureFilter"

    invoke-virtual {v3, v6}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 646
    check-cast v0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;

    .line 648
    .local v0, EffectCaptureFilter:Landroid/filterpacks/videosink/ImpleFaceEffectCapture;
    const/4 v1, 0x0

    .line 649
    .local v1, imageOrientation:I
    iget v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationCompensation:I

    sparse-switch v3, :sswitch_data_0

    .line 663
    const/16 v1, 0x10e

    .line 667
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const-string v6, "pref_setting_mirror"

    .line 668
    iget-object v7, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 667
    invoke-virtual {v3, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, mirror:Ljava/lang/String;
    const-string v3, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    const-string v6, "pictureFlip"

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 672
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 671
    invoke-virtual {v0, v6, v3}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    const-string v3, "FaceCaptureDoneListener"

    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    invoke-virtual {v0, v3, v6}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    const-string v3, "onCapture"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    const-string v3, "onCapture"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    const-string v3, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "iOrientationCompensation="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationCompensation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " imageOrientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mTakingPicture:Z

    goto/16 :goto_0

    .line 651
    .end local v2           #mirror:Ljava/lang/String;
    :sswitch_0
    const/16 v1, 0x10e

    .line 652
    goto :goto_1

    .line 654
    :sswitch_1
    const/4 v1, 0x0

    .line 655
    goto :goto_1

    .line 657
    :sswitch_2
    const/16 v1, 0x5a

    .line 658
    goto :goto_1

    .line 660
    :sswitch_3
    const/16 v1, 0xb4

    .line 661
    goto :goto_1

    .restart local v2       #mirror:Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 672
    goto :goto_2

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 196
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 197
    const-string v0, "EffectsRecorder"

    const-string v1, "[EffectsRecord]_UpdateCameraParametersFLASH"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected _VideoRecordEnded(Z)V
    .locals 3
    .parameter "bReturn"

    .prologue
    const/4 v2, 0x1

    .line 771
    const-string v0, "EffectsRecorder"

    const-string v1, "Effect_VideoRecordEnded"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->AbsInflateParentLayout()V

    .line 773
    if-eqz p1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 783
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->AbsRecordingStopComplete()V

    .line 784
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 785
    return-void

    .line 778
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_DoReturnToCaller(Z)V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected _WaitRecordingStopThread()V
    .locals 3

    .prologue
    .line 758
    const-string v1, "EffectsRecorder"

    const-string v2, "[EffectsRecorder] _WaitRecordingStopThread()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->join()V

    .line 762
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEffectsListener(Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "effectsListener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mEffectsListener:Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;

    .line 86
    return-void
.end method

.method public setRecordingOrientation(ILcom/pantech/app/vegacamera/data/AppData;Landroid/filterfw/core/GraphRunner;)V
    .locals 11
    .parameter "parentOrientation"
    .parameter "data"
    .parameter "runner"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 308
    const-string v6, "EffectsRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setRecordingOrientation() effectstate="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iput p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    .line 310
    const-string v6, "EffectsRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setRecordingOrientation mOrientationHint:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-object p3, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 313
    iput-object p2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 314
    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_0

    .line 315
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 316
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v10, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 317
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v9, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 318
    .local v4, tl:Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v10, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 320
    .local v5, tr:Landroid/filterfw/geometry/Point;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v6

    if-nez v6, :cond_1

    .line 321
    const-string v6, "EffectsRecorder"

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setRecordingOrientation() camid: main"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 323
    const-string v8, "ori"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 322
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 340
    .local v3, recordingRegion:Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 341
    .local v2, recorder:Landroid/filterfw/core/Filter;
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    .end local v0           #bl:Landroid/filterfw/geometry/Point;
    .end local v1           #br:Landroid/filterfw/geometry/Point;
    .end local v2           #recorder:Landroid/filterfw/core/Filter;
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    .end local v4           #tl:Landroid/filterfw/geometry/Point;
    .end local v5           #tr:Landroid/filterfw/geometry/Point;
    :cond_0
    const-string v6, "EffectsRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setRecordingOrientation recordingOrientation:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void

    .line 327
    .restart local v0       #bl:Landroid/filterfw/geometry/Point;
    .restart local v1       #br:Landroid/filterfw/geometry/Point;
    .restart local v4       #tl:Landroid/filterfw/geometry/Point;
    .restart local v5       #tr:Landroid/filterfw/geometry/Point;
    :cond_1
    const-string v6, "EffectsRecorder"

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setRecordingOrientation() camid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 329
    const-string v8, "ori"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 328
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 334
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 335
    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 337
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_3
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method
