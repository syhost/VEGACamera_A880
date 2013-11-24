.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$1;
.super Lcom/pantech/app/vegacamera/bridge/glui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    .line 244
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->layout(IIII)V

    .line 256
    :cond_0
    return-void
.end method
