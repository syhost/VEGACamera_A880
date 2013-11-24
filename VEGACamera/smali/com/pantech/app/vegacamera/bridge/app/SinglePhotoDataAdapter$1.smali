.class Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$1;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 9
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
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v7, 0x0

    .line 88
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 89
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 92
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 93
    .local v2, height:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v5, 0x4480

    .line 96
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    .line 95
    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    .line 94
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 97
    new-instance v5, Landroid/graphics/Rect;

    .line 98
    invoke-direct {v5, v7, v7, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    invoke-virtual {v1, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$0(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->access$0(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    .line 100
    const/4 v7, 0x1

    new-instance v8, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;

    .line 101
    invoke-direct {v8, v1, v0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
