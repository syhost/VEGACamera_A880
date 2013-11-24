.class public Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;
.super Landroid/os/Handler;
.source "ImpleNormalCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x4

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->SetupPreview()V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->ReCapture()V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$4(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;->UpdateThumbNail()V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$6(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
