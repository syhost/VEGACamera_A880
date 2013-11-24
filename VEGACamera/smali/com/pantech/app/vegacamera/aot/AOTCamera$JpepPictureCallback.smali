.class final Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;
.super Ljava/lang/Object;
.source "AOTCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpepPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 807
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[JpegPictureCallback] onPictureTaken"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$14(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->storeImage([BLandroid/location/Location;)I
    invoke-static {v0, p1, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;[BLandroid/location/Location;)I

    .line 809
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->checkStorage()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 810
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$15(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->abandonAudioFocus()V

    .line 811
    return-void
.end method
