.class final Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;
.super Ljava/lang/Object;
.source "ImpleBurstCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 195
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 17
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    const-wide/16 v13, 0x3e8

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_MemoryFullFinish()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    goto :goto_0

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$21(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v1

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-eqz v1, :cond_5

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$23(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    .line 223
    :goto_1
    const-string v1, "ImpleBurstCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "lPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 227
    .local v12, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v9

    .line 229
    .local v9, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iJpegRotation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$26(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v1

    add-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_6

    .line 230
    iget v6, v12, Landroid/hardware/Camera$Size;->width:I

    .line 231
    .local v6, width:I
    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    .line 243
    .local v7, height:I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 244
    .local v10, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v13

    sub-long v13, v10, v13

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegCallbackFinishTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$27(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    .line 245
    const-string v1, "ImpleBurstCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "lJpegCallbackFinishTime = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegCallbackFinishTime:J
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$28(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    const-wide/16 v13, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$21(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsAttachContentsCameraIntent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetCropValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 251
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    .line 256
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    goto/16 :goto_0

    .line 221
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v10           #now:J
    .end local v12           #s:Landroid/hardware/Camera$Size;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$23(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V

    goto/16 :goto_1

    .line 233
    .restart local v9       #orientation:I
    .restart local v12       #s:Landroid/hardware/Camera$Size;
    :cond_6
    iget v6, v12, Landroid/hardware/Camera$Size;->height:I

    .line 234
    .restart local v6       #width:I
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    .restart local v7       #height:I
    goto/16 :goto_2

    .line 258
    .restart local v10       #now:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 259
    .restart local v3       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 261
    .restart local v4       #title:Ljava/lang/String;
    const-string v1, "ImpleBurstCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "iBurstCnt = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$30(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->PrePareUri()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$31(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    goto/16 :goto_0
.end method
