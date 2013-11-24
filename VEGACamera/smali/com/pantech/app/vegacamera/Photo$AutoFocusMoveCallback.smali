.class final Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "moving"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    goto :goto_0

    .line 313
    :cond_3
    if-eqz p1, :cond_4

    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStart(I)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0
.end method
