.class Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Z)Z
    .locals 7
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 600
    if-eqz p2, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v4

    .line 602
    :cond_1
    const/4 v1, 0x1

    .line 603
    .local v1, quota:I
    const/4 v2, 0x0

    .line 604
    .local v2, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :cond_2
    :goto_1
    if-gtz v1, :cond_5

    .line 619
    :cond_3
    if-nez v2, :cond_4

    .line 620
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 621
    :cond_4
    if-nez v2, :cond_0

    move v4, v5

    goto :goto_0

    .line 605
    :cond_5
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    monitor-enter v6

    .line 606
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->pop()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v2

    .line 605
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    if-eqz v2, :cond_3

    .line 610
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 611
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->isLoaded()Z

    move-result v0

    .line 612
    .local v0, hasBeenLoaded:Z
    iget v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 613
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 614
    if-nez v0, :cond_6

    .line 615
    invoke-virtual {v2, p1, v5, v5}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    .line 616
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 605
    .end local v0           #hasBeenLoaded:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0       #hasBeenLoaded:Z
    :cond_7
    move v3, v5

    .line 612
    goto :goto_2
.end method
