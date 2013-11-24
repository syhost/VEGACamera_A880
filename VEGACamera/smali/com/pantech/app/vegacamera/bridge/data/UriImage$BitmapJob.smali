.class Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/UriImage;
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

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/UriImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->mType:I

    .line 187
    return-void
.end method


# virtual methods
.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 191
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    #calls: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->prepareInputFile(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Z
    invoke-static {v3, p1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$0(Lcom/pantech/app/vegacamera/bridge/data/UriImage;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object v4

    .line 193
    :cond_1
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->mType:I

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getTargetSize(I)I

    move-result v2

    .line 194
    .local v2, targetSize:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 196
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$1(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$1(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 197
    :goto_1
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->mType:I

    .line 196
    invoke-static {p1, v3, v1, v2, v5}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decodeThumbnail(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 203
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 204
    invoke-static {v0, v2, v6}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    move-object v4, v0

    .line 208
    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object v3, v4

    .line 196
    goto :goto_1

    .line 206
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {v0, v2, v6}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage$BitmapJob;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
