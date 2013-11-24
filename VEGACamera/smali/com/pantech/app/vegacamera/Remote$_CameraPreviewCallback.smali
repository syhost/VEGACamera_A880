.class final Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "_CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Remote;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->OnShotPreviewFrame()V

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #calls: Lcom/pantech/app/vegacamera/Remote;->_SetPreviewData([B)V
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/Remote;->access$9(Lcom/pantech/app/vegacamera/Remote;[B)V

    .line 161
    return-void
.end method
