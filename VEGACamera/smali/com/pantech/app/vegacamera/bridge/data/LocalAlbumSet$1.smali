.class Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->onFutureDone(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->notifyContentChanged()V

    .line 290
    return-void
.end method
