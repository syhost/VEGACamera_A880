.class Lcom/pantech/app/vegacamera/video/EffectsRecorder$4;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_InitRecorder()Z
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$4;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 404
    if-ne p2, v2, :cond_0

    .line 406
    const-string v0, "EffectsRecorder"

    const-string v1, "[EffectsRecorder] onError MEDIA_RECORDER_ERROR_UNKNOWN stopVideoRecording"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$4;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_StopVideoRecording(Z)V

    .line 410
    :cond_0
    return-void
.end method
