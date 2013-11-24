.class Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;
.super Ljava/lang/Object;
.source "ActionImage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/ActionImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/ActionImage;


# direct methods
.method protected constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/ActionImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/ActionImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->mType:I

    .line 56
    return-void
.end method


# virtual methods
.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v4, 0x1

    .line 60
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->mType:I

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 61
    .local v1, targetSize:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/ActionImage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->access$0(Lcom/pantech/app/vegacamera/bridge/data/ActionImage;)Lcom/pantech/app/vegacamera/bridge/CameraApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/ActionImage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->mResourceId:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->access$1(Lcom/pantech/app/vegacamera/bridge/data/ActionImage;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 64
    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
