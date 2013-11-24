.class Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;
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
    name = "RegionDecoderJob"
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
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/UriImage;Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;-><init>(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    #calls: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->prepareInputFile(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Z
    invoke-static {v2, p1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$0(Lcom/pantech/app/vegacamera/bridge/data/UriImage;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return-object v1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$1(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$1(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    .line 172
    invoke-static {p1, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 174
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_2

    .line 175
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    #setter for: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->mWidth:I
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$2(Lcom/pantech/app/vegacamera/bridge/data/UriImage;I)V

    .line 176
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    #setter for: Lcom/pantech/app/vegacamera/bridge/data/UriImage;->mHeight:I
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;->access$3(Lcom/pantech/app/vegacamera/bridge/data/UriImage;I)V

    :cond_2
    move-object v1, v0

    .line 178
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage$RegionDecoderJob;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
