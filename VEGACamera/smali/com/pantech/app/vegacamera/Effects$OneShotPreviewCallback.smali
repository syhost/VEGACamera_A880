.class final Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->OnShotPreviewFrame()V

    .line 321
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_CameraSetForSnapshotFlip()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$38(Lcom/pantech/app/vegacamera/Effects;)V

    .line 332
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/Effects;->access$39(Lcom/pantech/app/vegacamera/Effects;I)V

    .line 337
    return-void
.end method
