.class Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;
.super Landroid/os/Handler;
.source "PhotoPerformanceTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/PhotoPerformanceTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x1f4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    .line 38
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 40
    :sswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    #getter for: Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    invoke-virtual {v1, v3, v2}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->SetOperHandler(II)V

    goto :goto_0

    .line 45
    :sswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    #getter for: Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v1, v2, v7, v7}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->OnSingleTapUp(Landroid/view/View;II)V

    goto :goto_0

    .line 50
    :sswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    #getter for: Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, dataReturnIntent:Landroid/content/Intent;
    const-string v1, "layout-inflate"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 53
    const-string v1, "layout-start"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    const-string v1, "camera-onresume"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mCameraOnResumeTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 55
    const-string v1, "camera-open"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 56
    const-string v1, "start-preview"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    const-string v1, "full-open"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    .line 60
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    .line 61
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    .line 62
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mCameraOnResumeTime:J

    .line 63
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    .line 64
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    .line 65
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    .line 66
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    .line 67
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v6, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 68
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_0

    .line 73
    .end local v0           #dataReturnIntent:Landroid/content/Intent;
    :sswitch_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    #getter for: Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .restart local v0       #dataReturnIntent:Landroid/content/Intent;
    const-string v1, "take-picture"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string v1, "store"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 77
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    .line 78
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    .line 79
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v6, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 80
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 84
    .end local v0           #dataReturnIntent:Landroid/content/Intent;
    :sswitch_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    #getter for: Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .restart local v0       #dataReturnIntent:Landroid/content/Intent;
    const-string v1, "af"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v6, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 88
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    .line 89
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 93
    .end local v0           #dataReturnIntent:Landroid/content/Intent;
    :sswitch_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    #getter for: Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->access$0(Lcom/pantech/app/vegacamera/PhotoPerformanceTest;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .restart local v0       #dataReturnIntent:Landroid/content/Intent;
    const-string v1, "layout-inflate"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    const-string v1, "layout-start"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    const-string v1, "camera-onresume"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mCameraOnResumeTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    const-string v1, "camera-open"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    const-string v1, "start-preview"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    const-string v1, "full-open"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    const-string v1, "take-picture"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    const-string v1, "store"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    const-string v1, "af"

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    .line 106
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    .line 107
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    .line 108
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mCameraOnResumeTime:J

    .line 109
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    .line 110
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    .line 111
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    .line 112
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    .line 113
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    .line 114
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    .line 115
    sput-wide v4, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    .line 116
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v6, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest$1;->this$0:Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x44 -> :sswitch_2
        0x45 -> :sswitch_3
        0x46 -> :sswitch_4
        0x47 -> :sswitch_5
    .end sparse-switch
.end method
