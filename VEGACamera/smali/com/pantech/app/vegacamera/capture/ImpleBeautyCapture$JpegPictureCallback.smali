.class final Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;
.super Ljava/lang/Object;
.source "ImpleBeautyCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
