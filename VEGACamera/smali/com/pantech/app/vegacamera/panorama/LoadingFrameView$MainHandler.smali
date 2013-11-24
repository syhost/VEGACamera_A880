.class Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;
.super Landroid/os/Handler;
.source "LoadingFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;-><init>(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    #getter for: Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->access$0(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->invalidate()V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
