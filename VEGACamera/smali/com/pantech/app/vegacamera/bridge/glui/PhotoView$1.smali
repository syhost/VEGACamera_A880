.class Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onUndoDeleteImage()V

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->hideUndoBar()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$46(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    .line 274
    return-void
.end method
