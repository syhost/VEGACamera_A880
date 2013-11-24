.class final Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2306
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2311
    :cond_1
    if-eqz p1, :cond_2

    .line 2312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VideoRecord] AutoFocusCallback true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setFocusCallback(Z)V

    goto :goto_0

    .line 2314
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VideoRecord] AutoFocusCallback false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
