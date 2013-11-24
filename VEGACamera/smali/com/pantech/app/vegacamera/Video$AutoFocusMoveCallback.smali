.class final Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Video;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "moving"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    goto :goto_0

    .line 299
    :cond_3
    if-eqz p1, :cond_4

    .line 300
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStart(I)V

    goto :goto_0

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0
.end method
