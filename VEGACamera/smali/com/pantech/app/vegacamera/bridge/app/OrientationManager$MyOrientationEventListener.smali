.class Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    .line 204
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 212
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->access$0(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;)I

    move-result v1

    #calls: Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->roundOrientation(II)I
    invoke-static {p1, v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->access$1(II)I

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->access$2(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;I)V

    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->updateCompensation()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->access$3(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;)V

    goto :goto_0
.end method
