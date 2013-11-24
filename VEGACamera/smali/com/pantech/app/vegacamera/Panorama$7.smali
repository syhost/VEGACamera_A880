.class Lcom/pantech/app/vegacamera/Panorama$7;
.super Ljava/lang/Thread;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->_StopCapture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1009
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    iget-boolean v2, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_GenerateFinalMosaic(Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    invoke-static {v2, v4}, Lcom/pantech/app/vegacamera/Panorama;->access$36(Lcom/pantech/app/vegacamera/Panorama;Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    move-result-object v1

    .line 1011
    .local v1, jpeg:Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->isValid:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    iget-boolean v2, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_1

    .line 1012
    const/4 v0, 0x0

    .line 1013
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, v1, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    iget-object v3, v1, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1014
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #jpeg:Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    :cond_0
    :goto_0
    return-void

    .line 1017
    .restart local v1       #jpeg:Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    :cond_1
    const-string v2, "Panorama"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Panorama] stopCapture = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama$7;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
