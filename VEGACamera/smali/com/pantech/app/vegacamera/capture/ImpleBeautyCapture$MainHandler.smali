.class public Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;
.super Landroid/os/Handler;
.source "ImpleBeautyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->SetupPreview()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->onCapture()V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->UpdateThumbNail()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
