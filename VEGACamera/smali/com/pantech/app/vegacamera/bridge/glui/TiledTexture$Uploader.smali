.class public Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# instance fields
.field private final mGlRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

.field private mIsQueued:Z

.field private final mTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 2
    .parameter "glRoot"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mIsQueued:Z

    .line 71
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mGlRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized addTexture(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->isReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 83
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mIsQueued:Z

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mIsQueued:Z

    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mGlRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->addOnGLIdleListener(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Z)Z
    .locals 8
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 92
    .local v0, deque:Ljava/util/ArrayDeque;,"Ljava/util/ArrayDeque<Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;>;"
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 94
    .local v3, now:J
    const-wide/16 v6, 0x4

    add-long v1, v3, v6

    .line 95
    .local v1, dueTime:J
    :goto_0
    cmp-long v6, v3, v1

    if-gez v6, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mIsQueued:Z

    .line 106
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mIsQueued:Z

    monitor-exit p0

    return v6

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;

    .line 97
    .local v5, t:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;
    #calls: Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->uploadNextTile(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    invoke-static {v5, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 99
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;->mGlRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestRender()V

    .line 101
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 103
    .end local v5           #t:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 92
    .end local v1           #dueTime:J
    .end local v3           #now:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
