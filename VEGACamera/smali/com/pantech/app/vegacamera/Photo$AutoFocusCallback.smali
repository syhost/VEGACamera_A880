.class final Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-eqz p1, :cond_2

    .line 284
    const-string v0, "Photo"

    const-string v1, "[Photo] AutoFocusCallback true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->AutoFocusDonePerformTest()V

    .line 289
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/Photo;->setFocusCallback(Z)V

    goto :goto_0

    .line 286
    :cond_2
    const-string v0, "Photo"

    const-string v1, "[Photo] AutoFocusCallback false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
