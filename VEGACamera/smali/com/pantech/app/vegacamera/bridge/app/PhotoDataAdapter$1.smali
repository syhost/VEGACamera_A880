.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;
.super Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/Path;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    .line 192
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 197
    :pswitch_0
    const-string v0, "PhotoDataAdapter"

    const-string v1, "MSG_RUN_OBJECT"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_1
    const-string v0, "PhotoDataAdapter"

    const-string v1, "MSG_LOAD_START"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    goto :goto_0

    .line 208
    :pswitch_2
    const-string v0, "PhotoDataAdapter"

    const-string v1, "MSG_LOAD_FINISH"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;->onLoadingFinished(Z)V

    goto :goto_0

    .line 215
    :pswitch_3
    const-string v0, "PhotoDataAdapter"

    const-string v1, "MSG_UPDATE_IMAGE_REQUESTS"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$23(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
