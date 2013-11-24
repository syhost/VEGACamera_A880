.class final Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Video;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 242
    const-string v0, "Video"

    const-string v1, "[Video] OneShotPreviewCallback onPreviewFrame"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->OnShotPreviewFrame()V

    .line 245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 250
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_CameraSetForSnapshotFlip()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$17(Lcom/pantech/app/vegacamera/Video;)V

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->iZoomValue:I
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/Video;->access$18(Lcom/pantech/app/vegacamera/Video;I)V

    .line 261
    return-void
.end method
