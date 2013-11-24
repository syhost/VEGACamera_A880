.class Lcom/pantech/app/vegacamera/Effects$5;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    .line 2414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFaceEffectCaptureDone([BII)V
    .locals 17
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2416
    const-string v1, "Effects"

    const-string v2, "OnFaceEffectCaptureDone callback triggered"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    move-object/from16 v0, p1

    #setter for: Lcom/pantech/app/vegacamera/Effects;->imageJpegData:[B
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/Effects;->access$14(Lcom/pantech/app/vegacamera/Effects;[B)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    move/from16 v0, p2

    #setter for: Lcom/pantech/app/vegacamera/Effects;->imageWidth:I
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/Effects;->access$15(Lcom/pantech/app/vegacamera/Effects;I)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    move/from16 v0, p3

    #setter for: Lcom/pantech/app/vegacamera/Effects;->imageHeight:I
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/Effects;->access$16(Lcom/pantech/app/vegacamera/Effects;I)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v2

    .line 2423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$17(Lcom/pantech/app/vegacamera/Effects;)I

    move-result v3

    add-int/lit16 v3, v3, 0x10e

    rem-int/lit16 v3, v3, 0x168

    .line 2422
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v7

    .line 2424
    .local v7, rotation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$18(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$19(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$18(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->imageWidth:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/Effects;->access$20(Lcom/pantech/app/vegacamera/Effects;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->imageHeight:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/Effects;->access$21(Lcom/pantech/app/vegacamera/Effects;)I

    move-result v6

    invoke-virtual/range {v1 .. v7}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$18(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 2428
    .local v10, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$18(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 2429
    .local v11, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->imageJpegData:[B
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$22(Lcom/pantech/app/vegacamera/Effects;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v16

    .line 2430
    .local v16, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$19(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->imageJpegData:[B
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$22(Lcom/pantech/app/vegacamera/Effects;)[B

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v12

    .line 2431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v15

    move/from16 v13, p2

    move/from16 v14, p3

    .line 2430
    invoke-virtual/range {v8 .. v16}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 2433
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #title:Ljava/lang/String;
    .end local v16           #orientation:I
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/Effects$5;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2436
    return-void
.end method
