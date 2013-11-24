.class Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;->this$0:Lcom/pantech/app/vegacamera/CameraHolder;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;->this$0:Lcom/pantech/app/vegacamera/CameraHolder;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;->this$0:Lcom/pantech/app/vegacamera/CameraHolder;

    #getter for: Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->access$0(Lcom/pantech/app/vegacamera/CameraHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;->this$0:Lcom/pantech/app/vegacamera/CameraHolder;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 76
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
