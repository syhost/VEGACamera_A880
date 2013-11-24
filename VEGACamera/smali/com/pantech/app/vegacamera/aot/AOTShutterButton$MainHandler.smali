.class Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;
.super Landroid/os/Handler;
.source "AOTShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    const/4 v1, 0x1

    #calls: Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->access$0(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
    .end packed-switch
.end method
