.class Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$0(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$0(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    .line 109
    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method
