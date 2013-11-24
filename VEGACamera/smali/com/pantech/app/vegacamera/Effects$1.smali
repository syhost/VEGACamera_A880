.class Lcom/pantech/app/vegacamera/Effects$1;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x3

    .line 1666
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SurfaceTexture ready callback received effect state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1667
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1666
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    monitor-enter p0

    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1670
    :cond_0
    monitor-exit p0

    .line 1746
    :goto_0
    return-void

    .line 1672
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v1, p1}, Lcom/pantech/app/vegacamera/Effects;->access$2(Lcom/pantech/app/vegacamera/Effects;Landroid/graphics/SurfaceTexture;)V

    .line 1674
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    if-nez v1, :cond_2

    .line 1680
    const-string v1, "Effects"

    const-string v2, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    monitor-exit p0

    goto :goto_0

    .line 1668
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1682
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 1686
    const-string v1, "Effects"

    const-string v2, "Ready callback: Already released, skipping."

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    monitor-exit p0

    goto :goto_0

    .line 1688
    :cond_3
    if-nez p1, :cond_6

    .line 1689
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 1690
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 1691
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1697
    :cond_4
    const-string v1, "Effects"

    const-string v2, "Ready callback: source null stopPreview()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1699
    const-string v1, "Effects"

    const-string v2, "Ready callback: mRunner.isRunning() return;"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    monitor-exit p0

    goto :goto_0

    .line 1710
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 1716
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$4(Lcom/pantech/app/vegacamera/Effects;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 1717
    const-string v1, "Effects"

    const-string v2, "Runner active, connecting effects preview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1719
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$5(Lcom/pantech/app/vegacamera/Effects;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1724
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$4(Lcom/pantech/app/vegacamera/Effects;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$6(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1726
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FOCUS_MODE:J

    #calls: Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/Effects;->access$7(Lcom/pantech/app/vegacamera/Effects;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1729
    :try_start_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$4(Lcom/pantech/app/vegacamera/Effects;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1740
    :try_start_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    .line 1742
    const-string v1, "Effects"

    const-string v2, "Start preview/effect switch complete"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    monitor-exit p0

    goto/16 :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1730
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1731
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_CloseCamera()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$8(Lcom/pantech/app/vegacamera/Effects;)V

    .line 1732
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$1;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 1734
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
