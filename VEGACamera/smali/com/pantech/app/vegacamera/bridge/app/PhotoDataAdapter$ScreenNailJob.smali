.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 757
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 759
    return-void
.end method


# virtual methods
.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 763
    const-string v3, "PhotoDataAdapter"

    const-string v4, "ScreenNail run"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v1

    .line 767
    .local v1, s:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 782
    :cond_0
    :goto_0
    return-object v2

    .line 772
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isTemporaryItem(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 773
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v2

    goto :goto_0

    .line 776
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 777
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 779
    if-eqz v0, :cond_3

    .line 780
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getFullImageRotation()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v5}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 782
    :cond_3
    if-eqz v0, :cond_0

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    invoke-direct {v2, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ScreenNailJob;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
