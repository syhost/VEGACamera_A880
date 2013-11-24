.class final Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;
.super Ljava/lang/Object;
.source "ImpleRemoteNormalCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 179
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 17
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    const/4 v2, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCapture:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$11(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$7(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v1

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-eqz v1, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$7(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterToPictureDisplayedTime:J

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$7(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPictureDisplayedToJpegCallbackTime:J

    .line 199
    :goto_1
    const-string v1, "RemoteCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    iget-wide v13, v5, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCancel:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 221
    .local v12, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v9

    .line 223
    .local v9, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegRotation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)I

    move-result v1

    add-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_6

    .line 224
    iget v6, v12, Landroid/hardware/Camera$Size;->width:I

    .line 225
    .local v6, width:I
    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    .line 230
    .local v7, height:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsAttachContentsCameraIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsAttachContentsCameraIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    .line 246
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 247
    .local v10, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v13

    sub-long v13, v10, v13

    iput-wide v13, v1, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegCallbackFinishTime:J

    .line 248
    const-string v1, "RemoteCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    iget-wide v13, v5, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegCallbackFinishTime:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    const-wide/16 v13, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    goto/16 :goto_0

    .line 196
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v10           #now:J
    .end local v12           #s:Landroid/hardware/Camera$Size;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterToPictureDisplayedTime:J

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 216
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto/16 :goto_2

    .line 227
    .restart local v9       #orientation:I
    .restart local v12       #s:Landroid/hardware/Camera$Size;
    :cond_6
    iget v6, v12, Landroid/hardware/Camera$Size;->height:I

    .line 228
    .restart local v6       #width:I
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    .restart local v7       #height:I
    goto/16 :goto_3
.end method
