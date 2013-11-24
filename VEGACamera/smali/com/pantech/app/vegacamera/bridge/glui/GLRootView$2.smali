.class Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$2;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$2;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, root:Landroid/view/View;
    sget v2, Lcom/pantech/app/vegacamera/R$id;->gl_root_cover:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, cover:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    return-void
.end method
