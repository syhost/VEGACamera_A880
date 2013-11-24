.class Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->mActive:Z

    .line 508
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 482
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v3

    monitor-enter v3

    .line 483
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->mActive:Z

    .line 484
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    monitor-exit v3

    .line 501
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;

    .line 482
    .local v1, listener:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 491
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$3(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 493
    .local v0, keepInQueue:Z
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 495
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v3

    monitor-enter v3

    .line 496
    if-eqz v0, :cond_1

    .line 497
    :try_start_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->enable()V

    .line 495
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 482
    .end local v0           #keepInQueue:Z
    .end local v1           #listener:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 492
    .restart local v1       #listener:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;
    :catchall_2
    move-exception v2

    .line 493
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    throw v2
.end method
