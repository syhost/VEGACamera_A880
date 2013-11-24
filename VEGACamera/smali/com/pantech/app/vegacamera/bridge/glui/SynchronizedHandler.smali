.class public Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private final mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->lockRenderThread()V

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 39
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 38
    throw v0
.end method
