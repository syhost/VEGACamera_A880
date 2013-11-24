.class final Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Video;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    if-eqz p1, :cond_2

    .line 270
    const-string v0, "Video"

    const-string v1, "[Video] AutoFocusCallback true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v0, "Video"

    const-string v1, "[Video] AutoFocusCallback false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
