.class Lcom/pantech/app/vegacamera/Panorama$MainHandler;
.super Landroid/os/Handler;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 328
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ClearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$21(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 329
    :cond_0
    return-void

    .line 219
    :sswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_OnBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$8(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 220
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/Panorama;->access$9(Lcom/pantech/app/vegacamera/Panorama;Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_SaveHighResMosaic()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$10(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 225
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_OnBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$8(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 226
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #setter for: Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Panorama;->access$11(Lcom/pantech/app/vegacamera/Panorama;Z)V

    .line 230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->pano_dialog_panorama_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$12(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetPreviewLayout()V

    goto :goto_0

    .line 238
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_OnBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$8(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 239
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 243
    :sswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_HideTooFastIndication()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$14(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 248
    :sswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_OnBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$8(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$12(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetPreviewLayout()V

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->UpdateThumbnailView()V

    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$7(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_GotoQuickview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$15(Lcom/pantech/app/vegacamera/Panorama;)V

    goto/16 :goto_0

    .line 264
    :sswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/16 v1, 0x68

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Panorama;->access$16(Lcom/pantech/app/vegacamera/Panorama;II)V

    goto/16 :goto_0

    .line 271
    :sswitch_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->objPlaySound:Ljava/lang/Object;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$17(Lcom/pantech/app/vegacamera/Panorama;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/4 v2, 0x1

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_PlayCaptureSound(Z)V
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/Panorama;->access$18(Lcom/pantech/app/vegacamera/Panorama;Z)V

    .line 271
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :sswitch_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->objPlaySound:Ljava/lang/Object;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$17(Lcom/pantech/app/vegacamera/Panorama;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/4 v2, 0x0

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_PlayCaptureSound(Z)V
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/Panorama;->access$18(Lcom/pantech/app/vegacamera/Panorama;Z)V

    .line 278
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 286
    :sswitch_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/16 v1, 0x70

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Panorama;->access$16(Lcom/pantech/app/vegacamera/Panorama;II)V

    goto/16 :goto_0

    .line 291
    :sswitch_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/16 v1, 0x65

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Panorama;->access$16(Lcom/pantech/app/vegacamera/Panorama;II)V

    goto/16 :goto_0

    .line 296
    :sswitch_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/16 v1, 0x6f

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Panorama;->access$16(Lcom/pantech/app/vegacamera/Panorama;II)V

    goto/16 :goto_0

    .line 301
    :sswitch_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_InitializeAfterDeviceOpen()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$19(Lcom/pantech/app/vegacamera/Panorama;)V

    goto/16 :goto_0

    .line 310
    :sswitch_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 316
    :sswitch_e
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 323
    :sswitch_f
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_SetUpMosaic()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$20(Lcom/pantech/app/vegacamera/Panorama;)V

    goto/16 :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_c
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_9
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_4
        0x2d -> :sswitch_5
        0x2e -> :sswitch_6
        0x2f -> :sswitch_0
        0x30 -> :sswitch_7
        0x31 -> :sswitch_8
        0x32 -> :sswitch_f
        0x3d -> :sswitch_0
        0x3e -> :sswitch_d
        0x3f -> :sswitch_e
    .end sparse-switch
.end method
