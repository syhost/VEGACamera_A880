.class public Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;
.super Landroid/os/Handler;
.source "ImpleRemoteNormalCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->SetupPreview()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCancel:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->onCapture()V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->UpdateThumbNail()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
