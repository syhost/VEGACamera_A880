.class Lcom/pantech/app/vegacamera/Panorama$10;
.super Ljava/lang/Thread;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->_SaveHighResMosaic()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 1173
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1176
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    iget-boolean v2, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_0

    .line 1177
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$44(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1180
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/4 v3, 0x1

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_GenerateFinalMosaic(Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/Panorama;->access$36(Lcom/pantech/app/vegacamera/Panorama;Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1182
    .local v9, jpeg:Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$44(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1185
    if-nez v9, :cond_1

    .line 1186
    const-string v1, "Panorama"

    const-string v2, "[Panorama] jpeg is null"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1239
    .end local v9           #jpeg:Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    :cond_0
    :goto_0
    return-void

    .line 1181
    :catchall_0
    move-exception v1

    .line 1182
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$44(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1183
    throw v1

    .line 1188
    .restart local v9       #jpeg:Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    :cond_1
    iget-boolean v2, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->isValid:Z

    if-nez v2, :cond_2

    .line 1189
    const-string v1, "Panorama"

    const-string v2, "[Panorama] jpeg is invalid"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1192
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$45(Lcom/pantech/app/vegacamera/Panorama;)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->iCameraInfoOrientation:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Panorama;->access$46(Lcom/pantech/app/vegacamera/Panorama;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v10, v2, 0x168

    .line 1193
    .local v10, orientation:I
    const/4 v14, 0x0

    .line 1194
    .local v14, uri:Landroid/net/Uri;
    const-string v2, "Panorama"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Panorama] orientation"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    if-eqz v10, :cond_5

    .line 1197
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1198
    .local v5, m:Landroid/graphics/Matrix;
    iget-object v2, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    iget-object v3, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    array-length v3, v3

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1199
    .local v0, thePicture:Landroid/graphics/Bitmap;
    int-to-float v2, v10

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1202
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1203
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1204
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 1205
    .local v11, pictureBytes:[B
    const/4 v10, 0x0

    .line 1206
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_SavePanorama([BIII)Landroid/net/Uri;
    invoke-static {v1, v11, v2, v3, v10}, Lcom/pantech/app/vegacamera/Panorama;->access$47(Lcom/pantech/app/vegacamera/Panorama;[BIII)Landroid/net/Uri;

    move-result-object v14

    .line 1208
    if-eqz v14, :cond_3

    .line 1211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1211
    :goto_1
    int-to-double v1, v1

    .line 1212
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v3

    int-to-double v3, v3

    .line 1211
    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v12, v1

    .line 1213
    .local v12, ratio:I
    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    .line 1214
    .local v8, inSampleSize:I
    iget-object v1, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    invoke-static {v1, v10, v8, v14}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail([BIILandroid/net/Uri;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v13

    .line 1215
    .local v13, tn:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 1217
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/pantech/app/vegacamera/util/Util;->BroadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1235
    .end local v0           #thePicture:Landroid/graphics/Bitmap;
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #inSampleSize:I
    .end local v11           #pictureBytes:[B
    .end local v12           #ratio:I
    .end local v13           #tn:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v1

    .line 1236
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    .line 1235
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1212
    .restart local v0       #thePicture:Landroid/graphics/Bitmap;
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v7       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #pictureBytes:[B
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1220
    .end local v0           #thePicture:Landroid/graphics/Bitmap;
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #pictureBytes:[B
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    iget-object v2, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    iget v3, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->width:I

    iget v4, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->height:I

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_SavePanorama([BIII)Landroid/net/Uri;
    invoke-static {v1, v2, v3, v4, v10}, Lcom/pantech/app/vegacamera/Panorama;->access$47(Lcom/pantech/app/vegacamera/Panorama;[BIII)Landroid/net/Uri;

    move-result-object v14

    .line 1222
    if-eqz v14, :cond_3

    .line 1225
    iget v1, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->height:I

    iget v2, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->width:I

    if-le v1, v2, :cond_6

    iget v1, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->width:I

    :goto_3
    int-to-double v1, v1

    .line 1226
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailViewWidth()I

    move-result v3

    int-to-double v3, v3

    .line 1225
    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v12, v1

    .line 1227
    .restart local v12       #ratio:I
    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    .line 1228
    .restart local v8       #inSampleSize:I
    iget-object v1, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    invoke-static {v1, v10, v8, v14}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail([BIILandroid/net/Uri;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v13

    .line 1229
    .restart local v13       #tn:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 1231
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$10;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/pantech/app/vegacamera/util/Util;->BroadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_2

    .line 1225
    .end local v8           #inSampleSize:I
    .end local v12           #ratio:I
    .end local v13           #tn:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_6
    iget v1, v9, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->height:I

    goto :goto_3
.end method
