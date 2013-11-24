.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;
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
    name = "FullImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
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
    .line 789
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 791
    return-void
.end method


# virtual methods
.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"

    .prologue
    .line 795
    const-string v0, "PhotoDataAdapter"

    const-string v1, "BitmapRegionDecoder run"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->isTemporaryItem(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x0

    .line 799
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->requestLargeImage()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$FullImageJob;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
