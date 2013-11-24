.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;
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
    name = "ScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 1
    .parameter
    .parameter "item"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 956
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
            "Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;>;"
    const-string v0, "PhotoDataAdapter"

    const-string v1, "onFutureDone"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 962
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 963
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 967
    const-string v0, "PhotoDataAdapter"

    const-string v1, "ScreenNailListener run"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/pantech/app/vegacamera/bridge/util/Future;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateScreenNail(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$4(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    .line 969
    return-void
.end method
