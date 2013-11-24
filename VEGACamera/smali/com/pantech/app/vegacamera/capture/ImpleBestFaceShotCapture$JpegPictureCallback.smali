.class final Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;
.super Ljava/lang/Object;
.source "ImpleBestFaceShotCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 203
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 13
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCapture:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Z)V

    .line 212
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    .line 216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v1

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v11

    sub-long/2addr v1, v11

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    .line 221
    :goto_1
    const-string v0, "BestFaceCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;I)V

    .line 224
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$21(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 226
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$23(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$23(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    .line 238
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$21(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 239
    .local v10, s:Landroid/hardware/Camera$Size;
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v7

    .line 241
    .local v7, orientation:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iJpegRotation:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v0

    add-int/2addr v0, v7

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    .line 242
    iget v5, v10, Landroid/hardware/Camera$Size;->width:I

    .line 243
    .local v5, width:I
    iget v6, v10, Landroid/hardware/Camera$Size;->height:I

    .line 250
    .local v6, height:I
    :goto_3
    const/4 v3, 0x0

    .line 251
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bestshot_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    :goto_4
    const-string v0, "Test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPictureTaken isShotCnt = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$26(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 266
    .local v8, now:J
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v1

    sub-long v1, v8, v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegCallbackFinishTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$27(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    .line 267
    const-string v0, "BestFaceCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lJpegCallbackFinishTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegCallbackFinishTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$28(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    const-wide/16 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    goto/16 :goto_0

    .line 219
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v7           #orientation:I
    .end local v8           #now:J
    .end local v10           #s:Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v1

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$11(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J

    move-result-wide v11

    sub-long/2addr v1, v11

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V

    goto/16 :goto_1

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 245
    .restart local v7       #orientation:I
    .restart local v10       #s:Landroid/hardware/Camera$Size;
    :cond_5
    iget v5, v10, Landroid/hardware/Camera$Size;->height:I

    .line 246
    .restart local v5       #width:I
    iget v6, v10, Landroid/hardware/Camera$Size;->width:I

    .restart local v6       #height:I
    goto/16 :goto_3

    .line 254
    .restart local v3       #title:Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selfshot_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4
.end method
