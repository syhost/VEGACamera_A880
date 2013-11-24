.class final Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    if-eqz p1, :cond_2

    .line 346
    const-string v0, "Effects"

    const-string v1, "[Effects] AutoFocusCallback true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 351
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0

    .line 348
    :cond_2
    const-string v0, "Effects"

    const-string v1, "[Effects] AutoFocusCallback false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
