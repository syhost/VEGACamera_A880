.class Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;
.super Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    .line 60
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHasFullImage:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$1(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;)V
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$2(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;)V

    .line 70
    :goto_1
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/util/Future;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$3(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    goto :goto_1
.end method
