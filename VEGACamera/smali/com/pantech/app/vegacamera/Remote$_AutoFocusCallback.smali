.class final Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "_AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Remote;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/16 v3, 0x47

    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconFocusResult(Z)V

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconFocusTouched(Z)V

    .line 175
    :cond_2
    if-eqz p1, :cond_3

    .line 176
    const-string v0, "Remote"

    const-string v1, "[Remote] AutoFocusCallback true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFocusState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "Remote"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraLatency] isRemoconFocusState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFocusState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 179
    :cond_3
    const-string v0, "Remote"

    const-string v1, "[Remote] AutoFocusCallback false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
