.class Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder$1;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder$1;->this$1:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder$1;->this$1:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v1

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder$1;->this$1:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit v1

    .line 806
    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
