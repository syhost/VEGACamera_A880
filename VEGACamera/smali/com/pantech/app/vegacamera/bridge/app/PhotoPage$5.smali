.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 5
    .parameter "loadingFailed"

    .prologue
    const/16 v4, 0x11

    .line 564
    const-string v1, "PhotoPage"

    const-string v2, "onLoadingFinished"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 566
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 567
    .local v0, photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    const-string v1, "PhotoPage"

    const-string v2, "!mModel.isEmpty()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 570
    const-string v1, "PhotoPage"

    const-string v2, "updateCurrentPhoto()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v0           #photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 583
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showView_MS:I

    if-eqz v1, :cond_1

    .line 584
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoadingFinished "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget v3, v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showView_MS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$17(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$17(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 588
    :cond_1
    return-void

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsActive:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$33(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "PhotoPage"

    const-string v2, "mIsActive"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$20(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    .line 578
    const-string v1, "PhotoPage"

    const-string v2, "mActivity.getStateManager().finishState()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 592
    const-string v0, "PhotoPage"

    const-string v1, "onLoadingStarted"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public onPhotoChanged(ILcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 8
    .parameter "index"
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 526
    const-string v2, "PhotoPage"

    const-string v3, "onPhotoChanged"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)I

    move-result v0

    .line 528
    .local v0, oldIndex:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V

    .line 530
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$28(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)I

    move-result v2

    if-lez v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$18(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Z)V

    .line 535
    :cond_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 536
    const-string v2, "PhotoPage"

    const-string v3, "onPhotoChanged setFilmMode true"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 547
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$30(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 548
    if-eqz p2, :cond_2

    .line 549
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v1

    .line 551
    .local v1, photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v1, :cond_6

    .line 552
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 556
    .end local v1           #photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateBars()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 559
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$32(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 560
    return-void

    .line 538
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 539
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$29(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;J)V

    .line 540
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->stopScrolling()V

    goto :goto_0

    .line 541
    :cond_5
    if-lt v0, v4, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)I

    move-result v2

    if-nez v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 543
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2, v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$18(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Z)V

    .line 544
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateBars()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    goto :goto_0

    .line 553
    .restart local v1       #photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_6
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsUndoVisible:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$31(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->resetToFirstPicture()V

    goto :goto_1
.end method
