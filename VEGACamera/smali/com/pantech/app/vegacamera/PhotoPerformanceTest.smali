.class public Lcom/pantech/app/vegacamera/PhotoPerformanceTest;
.super Lcom/pantech/app/vegacamera/Photo;
.source "PhotoPerformanceTest.java"


# static fields
.field private static final AF_TEST:I = 0x2

.field private static final HANDLE_AF_PERFORM_TEST_FINISH:I = 0x46

.field private static final HANDLE_AUTO_FOCUS:I = 0x1

.field private static final HANDLE_OPEN_PERFORM_TEST_FINISH:I = 0x44

.field private static final HANDLE_PERFORM_TEST_FINISH:I = 0x47

.field private static final HANDLE_SNAP_PERFORM_TEST_FINISH:I = 0x45

.field private static final HANDLE_TAKE_PICTURE:I = 0x0

.field private static final OPEN_TEST:I = 0x0

.field private static final PERFORM_TEST:I = 0x3

.field private static final PICTURE_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoPerformanceTest"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

.field private mTestCase:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    .line 36
    new-instance v0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;-><init>(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method private CheckPerformTest()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v2, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 285
    .local v0, i:Landroid/content/Intent;
    const-string v2, "open-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    :goto_0
    return v1

    .line 287
    :cond_0
    const-string v2, "picture-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const-string v2, "af-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    const/4 v1, 0x2

    goto :goto_0

    .line 292
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected AutoFocusDonePerformTest()V
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    .line 222
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mCamera AF Time  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/PerformanceView;->append(Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    :cond_2
    return-void
.end method

.method protected CameraOpenDonePerformTest()V
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    .line 209
    return-void
.end method

.method protected CameraOpenStartPerformTest()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    .line 203
    return-void
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 4
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    .line 129
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->GetPerformTestIntent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/pantech/app/vegacamera/util/PerformanceView;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->camera:I

    invoke-virtual {p1, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/vegacamera/util/PerformanceView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    const-string v1, "====== PERFORMANCE LOG ======= \n\n"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/PerformanceView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mSetContentViewTime  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/PerformanceView;->append(Ljava/lang/CharSequence;)V

    .line 138
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/Photo;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 139
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->CheckPerformTest()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    .line 140
    return-void
.end method

.method protected LayoutInitDonePerformTest()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    .line 198
    return-void
.end method

.method protected LayoutInitStartPerformTest()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    .line 193
    return-void
.end method

.method protected LayoutStartDonePerformTest()V
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    .line 188
    return-void
.end method

.method protected LayoutStartPerformTest()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    .line 183
    return-void
.end method

.method public OnDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/PerformanceView;->onRelease()V

    .line 277
    iput-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    .line 279
    :cond_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    .line 280
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnDestroy()V

    .line 281
    return-void
.end method

.method public OnResume()V
    .locals 4

    .prologue
    .line 298
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnResume()V

    .line 299
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mCameraOnResumeTime:J

    .line 300
    return-void
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 214
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    .line 215
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/Photo;->OnSingleTapUp(Landroid/view/View;II)V

    .line 217
    return-void
.end method

.method public OperCapture(II)V
    .locals 3
    .parameter "what"
    .parameter "count"

    .prologue
    .line 144
    const-string v0, "PhotoPerformanceTest"

    const-string v1, "OperCapture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapturePerformTest;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapturePerformTest;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 152
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/ICapture;->setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V

    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onStop()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected StartPreviewDonePerformTest()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 242
    sget-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    .line 243
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    .line 245
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    .line 246
    const-string v0, "PhotoPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mLayoutInitTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "PhotoPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mStartPreviewTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "PhotoPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] START_PREVIEW_DONE main thread time "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "PhotoPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mFullOpenTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    if-ne v0, v5, :cond_2

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mLayoutInitTime  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[CameraPerformTime] mCameraOpenTime  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string v2, "[CameraPerformTime] mStartPreviewTime  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string v2, "[CameraPerformTime] main thread time  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    const-string v2, "[CameraPerformTime] mFullOpenTime == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/PerformanceView;->append(Ljava/lang/CharSequence;)V

    .line 260
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    if-ne v0, v4, :cond_3

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    :cond_3
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    if-ne v0, v5, :cond_5

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    :cond_5
    return-void
.end method

.method protected StartPreviewStartPerformTest()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    .line 238
    return-void
.end method

.method public onCaptureComplete()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPerforManceView:Lcom/pantech/app/vegacamera/util/PerformanceView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraPerformTime] mTakePictureTime  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/PerformanceView;->append(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->onCaptureComplete()V

    .line 172
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mTestCase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    :cond_2
    return-void
.end method
