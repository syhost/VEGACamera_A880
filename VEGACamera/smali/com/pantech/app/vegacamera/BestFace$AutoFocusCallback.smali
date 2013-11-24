.class final Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;
.super Ljava/lang/Object;
.source "BestFace.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/BestFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/BestFace;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/BestFace;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/BestFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/BestFace;Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/BestFace;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/BestFace;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/BestFace;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    .line 72
    const-string v0, "BestFace"

    const-string v1, "[Photo] AutoFocusCallback true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/BestFace;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/BestFace;->setFocusCallback(Z)V

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "BestFace"

    const-string v1, "[Photo] AutoFocusCallback false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
