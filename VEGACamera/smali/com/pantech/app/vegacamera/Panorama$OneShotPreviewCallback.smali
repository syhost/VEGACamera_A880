.class final Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->OnShotPreviewFrame()V

    .line 336
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$12(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
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
    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #setter for: Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/Panorama;->access$23(Lcom/pantech/app/vegacamera/Panorama;I)V

    .line 347
    return-void
.end method
