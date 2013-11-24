.class public Lcom/pantech/app/vegacamera/Effects$CaptureHandler;
.super Landroid/os/Handler;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 3121
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$CaptureHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3138
    :goto_0
    :pswitch_0
    return-void

    .line 3134
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$CaptureHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$19(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->UpdateThumbNail()V

    goto :goto_0

    .line 3124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
