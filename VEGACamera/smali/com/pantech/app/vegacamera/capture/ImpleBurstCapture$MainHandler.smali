.class public Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;
.super Landroid/os/Handler;
.source "ImpleBurstCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->SetupPreview()V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;->UpdateThumbNail()V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_DissmissDialog()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    goto :goto_0

    .line 93
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_OnCatptureComplete()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->access$3(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
