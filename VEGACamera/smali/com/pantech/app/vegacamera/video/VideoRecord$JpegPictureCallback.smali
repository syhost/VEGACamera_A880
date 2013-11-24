.class final Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2066
    iput-object p2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2067
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/16 v3, 0x19

    .line 2073
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VideoRecord] onPictureTaken"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StoreImage([BLandroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 2078
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VideoRecord] Liveshot done"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2080
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x898

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2081
    return-void

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method
