.class public final Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method protected constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneShotPreviewCallback onPreviewFrame"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->OnShotPreviewFrame()V

    .line 2150
    return-void
.end method
