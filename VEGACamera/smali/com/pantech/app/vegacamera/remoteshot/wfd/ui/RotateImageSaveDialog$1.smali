.class Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$1;
.super Landroid/os/Handler;
.source "RotateImageSaveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;->imageSaveResult(Z)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
