.class Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->invalidate()V

    .line 291
    return-void
.end method

.method public isHoldingDelete()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHoldingDown()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(II)V
    .locals 1
    .parameter "velocity"
    .parameter "direction"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$44(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;->onAbsorb(II)V

    .line 316
    return-void
.end method

.method public onPull(II)V
    .locals 1
    .parameter "offset"
    .parameter "direction"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$44(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;->onPull(II)V

    .line 306
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$44(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;->onRelease()V

    .line 311
    return-void
.end method
