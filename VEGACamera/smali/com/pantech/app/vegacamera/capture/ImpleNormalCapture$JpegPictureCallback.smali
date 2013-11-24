.class final Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;
.super Ljava/lang/Object;
.source "ImpleNormalCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 210
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 18
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    const/4 v2, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCapture:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1, v14, v15}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->OnPicutreTakenDonePerformTest()V

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v1

    const-wide/16 v14, 0x0

    cmp-long v1, v1, v14

    if-eqz v1, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v16

    sub-long v14, v14, v16

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v1, v14, v15}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 229
    :goto_1
    const-string v1, "ImpleNormalCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "lPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$21(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 245
    const-string v1, "ImpleNormalCapture"

    const-string v2, "jpegData.length === 0+++++++++++++++++++++++++++++++++++++"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 250
    .local v13, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v9

    .line 252
    .local v9, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I

    move-result v1

    add-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_6

    .line 253
    iget v6, v13, Landroid/hardware/Camera$Size;->width:I

    .line 254
    .local v6, width:I
    iget v7, v13, Landroid/hardware/Camera$Size;->height:I

    .line 266
    .local v7, height:I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 267
    .local v11, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v14

    sub-long v14, v11, v14

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegCallbackFinishTime:J
    invoke-static {v1, v14, v15}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$23(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 268
    const-string v1, "ImpleNormalCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "lJpegCallbackFinishTime = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegCallbackFinishTime:J
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    const-wide/16 v14, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1, v14, v15}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->IsAttachContentsCameraIntent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 272
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetCropValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 274
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    .line 286
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    goto/16 :goto_0

    .line 227
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v11           #now:J
    .end local v13           #s:Landroid/hardware/Camera$Size;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v16

    sub-long v14, v14, v16

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v1, v14, v15}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    goto/16 :goto_1

    .line 256
    .restart local v9       #orientation:I
    .restart local v13       #s:Landroid/hardware/Camera$Size;
    :cond_6
    iget v6, v13, Landroid/hardware/Camera$Size;->height:I

    .line 257
    .restart local v6       #width:I
    iget v7, v13, Landroid/hardware/Camera$Size;->width:I

    .restart local v7       #height:I
    goto/16 :goto_2

    .line 279
    .restart local v11       #now:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->finish()V

    .line 282
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;->finish()V

    goto :goto_3

    .line 288
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCapture:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$26(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iCurrentCaptureCount:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$27(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iCurrentCaptureCount:I
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$28(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;I)V

    const/16 v1, 0xa

    if-ge v2, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 292
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    const/4 v2, 0x1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Z)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    const/4 v2, 0x1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$30(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Z)V

    .line 297
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$31(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 307
    .restart local v3       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 308
    .restart local v4       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->StoreStartPerformTest()V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$6(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v5

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual {v1, v2, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, mSaveAfterView:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_f

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    const-string v1, "off"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/16 v14, 0x1f4

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 300
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    .end local v10           #mSaveAfterView:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->IsZSLUsed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto/16 :goto_4

    .line 320
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v10       #mSaveAfterView:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 323
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    const-string v1, "off"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/16 v14, 0x1f4

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 328
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
