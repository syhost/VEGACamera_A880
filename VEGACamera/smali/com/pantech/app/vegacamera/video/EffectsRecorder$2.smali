.class Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/video/EffectsRecorder;->InitVideo(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RecordingStart()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x898

    .line 121
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    #getter for: Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->access$1(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 123
    .local v0, recorder:Landroid/filterfw/core/Filter;
    const-string v1, "recording"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    return-void
.end method

.method public RecordingStop()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$2;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    #getter for: Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->access$1(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 132
    .local v0, recorder:Landroid/filterfw/core/Filter;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method
