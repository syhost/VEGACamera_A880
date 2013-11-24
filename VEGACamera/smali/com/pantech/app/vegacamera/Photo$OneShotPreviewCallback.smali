.class public Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method protected constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 241
    const-string v0, "Photo"

    const-string v1, "OneShotPreviewCallback"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget v2, v2, Lcom/pantech/app/vegacamera/Photo;->iDisplayOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusPreview(Landroid/view/View;I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Photo;->access$10(Lcom/pantech/app/vegacamera/Photo;Z)V

    .line 250
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->OnShotPreviewFrame()V

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->StartPreviewDonePerformTest()V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsEffectPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_DissmissEffectedDialog()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$11(Lcom/pantech/app/vegacamera/Photo;)V

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_MIRROR:J

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 270
    return-void

    .line 260
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
    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iput p1, v0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 275
    return-void
.end method
