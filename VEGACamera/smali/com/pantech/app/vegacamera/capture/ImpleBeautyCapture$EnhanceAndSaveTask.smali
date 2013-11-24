.class Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;
.super Landroid/os/AsyncTask;
.source "ImpleBeautyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnhanceAndSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->doInBackground([[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)[B
    .locals 6
    .parameter "params"

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, out:[B
    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->doBeautification_1([B)[B
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$15(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;[B)[B

    move-result-object v0

    .line 556
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V

    .line 561
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->OnPicutreTakenDonePerformTest()V

    .line 565
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V

    .line 570
    :goto_0
    const-string v1, "NormalCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 588
    .end local v0           #out:[B
    :cond_0
    return-object v0

    .line 556
    .restart local v0       #out:[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPictureDisplayedToJpegCallbackTime:J
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$18(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 14
    .parameter "result"

    .prologue
    .line 594
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 595
    if-eqz p1, :cond_2

    .line 596
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 602
    .local v11, s:Landroid/hardware/Camera$Size;
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v8

    .line 604
    .local v8, orientation:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iJpegRotation:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$21(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)I

    move-result v0

    add-int/2addr v0, v8

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    .line 605
    iget v5, v11, Landroid/hardware/Camera$Size;->width:I

    .line 606
    .local v5, width:I
    iget v6, v11, Landroid/hardware/Camera$Size;->height:I

    .line 618
    .local v6, height:I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 619
    .local v9, now:J
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$17(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v12

    sub-long v12, v9, v12

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegCallbackFinishTime:J
    invoke-static {v0, v12, v13}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$22(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V

    .line 620
    const-string v0, "NormalCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "lJpegCallbackFinishTime = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegCallbackFinishTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$23(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    const-wide/16 v12, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J
    invoke-static {v0, v12, v13}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$16(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V

    .line 623
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->IsImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->IsAttachContentsCameraIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetCropValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 626
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v4

    .line 628
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v7

    move-object v1, p1

    .line 627
    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 629
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    .line 631
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    .line 640
    :goto_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 642
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    .line 650
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v8           #orientation:I
    .end local v9           #now:J
    .end local v11           #s:Landroid/hardware/Camera$Size;
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCapture:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$26(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Z)V

    .line 651
    return-void

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto/16 :goto_0

    .line 608
    .restart local v8       #orientation:I
    .restart local v11       #s:Landroid/hardware/Camera$Size;
    :cond_4
    iget v5, v11, Landroid/hardware/Camera$Size;->height:I

    .line 609
    .restart local v5       #width:I
    iget v6, v11, Landroid/hardware/Camera$Size;->width:I

    .restart local v6       #height:I
    goto/16 :goto_1

    .line 633
    .restart local v9       #now:J
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 634
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$24(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 635
    .restart local v3       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->StoreStartPerformTest()V

    .line 636
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v4

    .line 637
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v7

    move-object v1, p1

    .line 636
    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    goto :goto_2

    .line 644
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #title:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$25(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    goto :goto_3
.end method
