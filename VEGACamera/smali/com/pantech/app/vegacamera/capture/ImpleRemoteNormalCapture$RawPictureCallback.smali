.class final Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;
.super Ljava/lang/Object;
.source "ImpleRemoteNormalCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$8(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V

    .line 170
    const-string v0, "RemoteCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$9(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$5(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method
