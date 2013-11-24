.class public Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;
.super Landroid/os/Handler;
.source "ImpleBestFaceShotCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->SetupPreview()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iWhat:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$1(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCancel:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$2(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->onCapture()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
