.class Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;
.super Landroid/os/Handler;
.source "PicturesBestEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onProcessImgStart()V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onProcessImgFinish()V

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onProcessImgNoFace()V

    goto :goto_0

    .line 48
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onPicEditStart()V

    goto :goto_0

    .line 51
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onPicEditFinish()V

    goto :goto_0

    .line 54
    :pswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onSaveDirect()V

    goto :goto_0

    .line 57
    :pswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;->onSaveMergeResult()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
