.class Lcom/pantech/app/vegacamera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Camera;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Camera$1;->this$0:Lcom/pantech/app/vegacamera/Camera;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera$1;->this$0:Lcom/pantech/app/vegacamera/Camera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$1;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->mFadeInCameraScreenNail:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Camera;->access$0(Lcom/pantech/app/vegacamera/Camera;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 706
    return-void
.end method
