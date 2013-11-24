.class public interface abstract Lcom/pantech/app/vegacamera/operator/ILayoutControl;
.super Ljava/lang/Object;
.source "ILayoutControl.java"


# virtual methods
.method public abstract CancelAutoFocus()V
.end method

.method public abstract Capture()Z
.end method

.method public abstract CheckFocusState(I)I
.end method

.method public abstract FocusStart(I)V
.end method

.method public abstract FocusStop(I)V
.end method

.method public abstract GetFocusMode()Ljava/lang/String;
.end method

.method public abstract GetFocusState()I
.end method

.method public abstract GotoGallery()V
.end method

.method public abstract Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
.end method

.method public abstract InitFocusParm(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract IsCameraTipsVisible()Z
.end method

.method public abstract IsMenuContainerDepthAct()Z
.end method

.method public abstract IsMenuContainerSubDepthAct()Z
.end method

.method public abstract OnBackPressed()Z
.end method

.method public abstract OnFocusRelease()V
.end method

.method public abstract OnFullScreenChanged(Z)V
.end method

.method public abstract OnKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract OnKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract OnLongPress(Landroid/view/View;II)V
.end method

.method public abstract OnOrientationChanged(I)V
.end method

.method public abstract OnPreviewFrame([BLandroid/hardware/Camera;)V
.end method

.method public abstract OnSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract Release()V
.end method

.method public abstract SetColorExtractionUpdateMode(Ljava/lang/String;)V
.end method

.method public abstract SetFocusDisplayOrientation(I)V
.end method

.method public abstract SetFocusIndicatior(I[Landroid/hardware/Camera$Face;)V
.end method

.method public abstract SetFocusMirror()V
.end method

.method public abstract SetFocusPreview(Landroid/view/View;I)V
.end method

.method public abstract SetPreviewLayout()V
.end method

.method public abstract SetZoomIndex(I)V
.end method

.method public abstract ShowCameraTips()V
.end method

.method public abstract Start()V
.end method

.method public abstract StartFaceDetect()V
.end method

.method public abstract Stop()V
.end method

.method public abstract StopFaceDetect()V
.end method

.method public abstract TimerShotCancel()V
.end method

.method public abstract UnSetPreviewLayout()V
.end method

.method public abstract VideoRecordStart()V
.end method

.method public abstract _ClearLayoutAll()V
.end method

.method public abstract _MenuContainerClear()V
.end method

.method public abstract onCaptureComplete()V
.end method
