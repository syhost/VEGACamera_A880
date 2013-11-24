.class Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;
.super Ljava/lang/Object;
.source "AOTCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mLastContentUri:Landroid/net/Uri;

.field private mStartOrientation:I

.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;[BLandroid/location/Location;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->storeImage([BLandroid/location/Location;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;)I
    .locals 1
    .parameter

    .prologue
    .line 866
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I

    return v0
.end method

.method private capture()V
    .locals 11

    .prologue
    .line 884
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[AOTCamera]capture"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 917
    :goto_0
    return-void

    .line 889
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    .line 890
    .local v0, dateTaken:J
    const-string v6, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, datetime:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Camera] datetime : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$19(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "exif-datetime"

    invoke-virtual {v6, v7, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$19(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 895
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$19(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 896
    .local v4, pictureSize:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    .line 897
    .local v5, width:I
    iget v3, v4, Landroid/hardware/Camera$Size;->height:I

    .line 899
    .local v3, height:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$19(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I
    invoke-static {v7}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$20(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v7

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$21(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v6

    iput v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I

    .line 901
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$19(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 903
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[AOTCamera] capture() mStartOrientation is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_1

    move v6, v5

    :goto_1
    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageWidth:I
    invoke-static {v7, v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$22(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 906
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_2

    .end local v3           #height:I
    :goto_2
    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageHeight:I
    invoke-static {v6, v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$23(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 908
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[AOTCamera] capture() mImageWidth is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageWidth:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$24(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[AOTCamera] capture() mImageHeight is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageHeight:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$25(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$15(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->requestAudioFocus()V

    .line 913
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$26(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRawPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$27(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mJpepPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;
    invoke-static {v10}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$28(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 915
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    const/4 v7, 0x0

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$29(Lcom/pantech/app/vegacamera/aot/AOTCamera;Z)V

    goto/16 :goto_0

    .restart local v3       #height:I
    :cond_1
    move v6, v3

    .line 905
    goto :goto_1

    :cond_2
    move v3, v5

    .line 906
    goto :goto_2
.end method

.method private storeImage([BLandroid/location/Location;)I
    .locals 14
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 921
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[AOTCamera] storeImage(byte[] data, Location loc)"

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    if-eqz p2, :cond_0

    .line 924
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] storeImage() Latitude is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] storeImage() Longitude is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 930
    .local v2, dateTaken:J
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->createName(J)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$30(Lcom/pantech/app/vegacamera/aot/AOTCamera;J)Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, title:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 934
    .local v6, filename:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 935
    .local v9, degree:[I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$31(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v5

    .line 936
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageWidth:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$24(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v10

    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageHeight:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$25(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v11

    move-object/from16 v4, p2

    move-object v8, p1

    .line 935
    invoke-static/range {v0 .. v11}, Lcom/pantech/app/vegacamera/util/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[III)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mLastContentUri:Landroid/net/Uri;

    .line 940
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    const/4 v4, 0x0

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->lastFilePath:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$32(Lcom/pantech/app/vegacamera/aot/AOTCamera;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->lastFilePath:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$32(Lcom/pantech/app/vegacamera/aot/AOTCamera;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->MediaScannerConnect()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$33(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[AOTCamera] GetFileDir() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$34(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$31(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v13

    .line 952
    .local v13, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$34(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SaveLastThumbnailToFile(Ljava/io/File;)V

    .line 954
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$15(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->onTopButtonClick(Z)V

    .line 956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$5(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 957
    const/4 v0, 0x0

    .end local v1           #title:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v6           #filename:Ljava/lang/String;
    .end local v9           #degree:[I
    .end local v13           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :goto_0
    return v0

    .line 945
    :catch_0
    move-exception v12

    .line 946
    .local v12, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[Camera] Exception while compressing image."

    invoke-static {v0, v4, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 947
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLastCaptureUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initiate()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->pauseAudioPlay()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$18(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 880
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->capture()V

    goto :goto_0
.end method

.method public onSnap()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 962
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$11(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$10(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$35(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$36(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 966
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$37(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setTouchEnabled(Z)V

    .line 967
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CameraWidget] [ImageCapture] onSnap()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->initiate()V

    goto :goto_0
.end method

.method public setLastCaptureUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 873
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mLastContentUri:Landroid/net/Uri;

    .line 874
    return-void
.end method
