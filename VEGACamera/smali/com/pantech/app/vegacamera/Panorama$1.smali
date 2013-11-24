.class Lcom/pantech/app/vegacamera/Panorama$1;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$3(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$30(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 386
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$3(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    if-nez v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$30(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$30(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$30(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->alignFrame()V

    .line 394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$1;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$0(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
