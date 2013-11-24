.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;
.super Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
.source "PhotoPage.java"


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
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    .line 275
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 278
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 432
    :pswitch_0
    new-instance v5, Ljava/lang/AssertionError;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(I)V

    throw v5

    .line 280
    :pswitch_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->hideBars()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$10(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 284
    :pswitch_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$3(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 289
    :pswitch_3
    :try_start_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$11(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->onFullScreenChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PhotoPage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MSG_ON_FULL_SCREEN_CHANGED exception"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 289
    goto :goto_1

    .line 297
    :pswitch_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateBars()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    goto :goto_0

    .line 301
    :pswitch_5
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->wantBars()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$13(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    goto :goto_0

    .line 305
    :pswitch_6
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v5

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unfreeze()V

    goto :goto_0

    .line 309
    :pswitch_7
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferUpdateUntil:J
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$14(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v1, v7, v9

    .line 310
    .local v1, nextUpdate:J
    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-gtz v5, :cond_2

    .line 311
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferredUpdateWaiting:Z
    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$15(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Z)V

    .line 312
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$16(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$17(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 319
    .end local v1           #nextUpdate:J
    :pswitch_8
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v7, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$18(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Z)V

    .line 320
    const/4 v4, 0x0

    .line 321
    .local v4, stayedOnCamera:Z
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v7

    if-nez v7, :cond_3

    .line 322
    const/4 v4, 0x1

    .line 332
    :goto_2
    if-eqz v4, :cond_0

    .line 333
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$11(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    move-result-object v7

    if-nez v7, :cond_6

    .line 339
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToImage(I)V

    goto/16 :goto_0

    .line 323
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$19(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$20(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v7

    if-le v7, v5, :cond_4

    .line 324
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToImage(I)V

    goto :goto_2

    .line 326
    :cond_4
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$11(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 327
    const-string v7, "PhotoPage"

    const-string v8, "MSG_ON_CAMERA_CENTER setFilmMode true"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 330
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 341
    :cond_6
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateBars()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 342
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v6

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    goto/16 :goto_0

    .line 348
    .end local v4           #stayedOnCamera:Z
    :pswitch_9
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 349
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v6

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 350
    const-string v6, "PhotoPage"

    const-string v7, "MSG_ON_PICTURE_CENTER setFilmMode true"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 356
    :pswitch_a
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v3

    .line 357
    .local v3, photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    const/4 v6, 0x0

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$23(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 358
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    invoke-static {v5, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    goto/16 :goto_0

    .line 362
    .end local v3           #photo:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :pswitch_b
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$16(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    goto/16 :goto_0

    .line 366
    :pswitch_c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 381
    :pswitch_d
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->removeMessages(I)V

    .line 382
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v5

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget v7, v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showView_MS:I

    invoke-virtual {v5, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToQuickView(I)V

    .line 383
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iput v6, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showView_MS:I

    goto/16 :goto_0

    .line 387
    :pswitch_e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 394
    :pswitch_f
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->stopTaskAndDismissDialog()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 395
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 399
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$4(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 403
    :pswitch_10
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$25(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 404
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$25(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 405
    :cond_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 412
    :pswitch_11
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v6, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 416
    :pswitch_12
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->removeMessages(I)V

    .line 417
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 418
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->delete_picture_how:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 424
    :pswitch_13
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->removeMessages(I)V

    .line 425
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->deleted:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
