.class Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;
.super Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextOneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Text;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Text;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Text;

    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 88
    const-string v0, "Text"

    const-string v1, "[HDR] HdrOneShotPreviewCallback"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Text;

    #calls: Lcom/pantech/app/vegacamera/Text;->_DissmissTextDialog()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Text;->access$0(Lcom/pantech/app/vegacamera/Text;)V

    .line 90
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 91
    return-void
.end method
