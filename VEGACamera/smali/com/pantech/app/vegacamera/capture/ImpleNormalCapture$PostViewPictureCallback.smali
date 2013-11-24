.class final Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;
.super Ljava/lang/Object;
.source "ImpleNormalCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V

    .line 193
    const-string v0, "ImpleNormalCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mShutterToPostViewCallbackTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterCallbackTime:J
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->access$8(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J

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

    .line 194
    return-void
.end method
