.class Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/EffectsRecorder;
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFaceEffectCaptureDone([BII)V
    .locals 2
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 683
    const-string v0, "EffectsRecorder"

    const-string v1, "OnFaceEffectCaptureDone callback triggered"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_StoreImage([BLandroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    const/4 v1, 0x6

    #calls: Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sendMessage(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->access$0(Lcom/pantech/app/vegacamera/video/EffectsRecorder;I)V

    .line 690
    :goto_0
    const-string v0, "EffectsRecorder"

    const-string v1, "[VideoRecord] Liveshot done"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$1;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method
