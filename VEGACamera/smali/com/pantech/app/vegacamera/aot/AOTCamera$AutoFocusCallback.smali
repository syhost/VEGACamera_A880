.class final Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "AOTCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 822
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onAutoFocus] focused : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$16(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 828
    if-eqz p1, :cond_1

    .line 829
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$17(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$14(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->onSnap()V

    .line 846
    :cond_0
    :goto_1
    return-void

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$17(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    goto :goto_0

    .line 834
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$16(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 837
    if-eqz p1, :cond_3

    .line 838
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$17(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    goto :goto_1

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$17(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    goto :goto_1
.end method
