.class Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;
.super Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;
.source "Hdr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Hdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HdrOneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Hdr;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Hdr;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Hdr;

    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 166
    const-string v0, "Hdr"

    const-string v1, "[HDR] HdrOneShotPreviewCallback"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Hdr;

    #calls: Lcom/pantech/app/vegacamera/Hdr;->_DissmissHdrDialog()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Hdr;->access$0(Lcom/pantech/app/vegacamera/Hdr;)V

    .line 168
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 169
    return-void
.end method
