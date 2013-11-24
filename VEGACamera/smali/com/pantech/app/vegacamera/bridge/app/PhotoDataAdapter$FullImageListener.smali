.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/pantech/app/vegacamera/bridge/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 2
    .parameter
    .parameter "item"

    .prologue
    .line 931
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    const-string v0, "PhotoDataAdapter"

    const-string v1, "FullImageListener"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 934
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
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const-string v0, "PhotoDataAdapter"

    const-string v1, "onFutureDone"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 940
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 941
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 945
    const-string v0, "PhotoDataAdapter"

    const-string v1, "FullImageListener run"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateFullImage(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$3(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    .line 947
    return-void
.end method
