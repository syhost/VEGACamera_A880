.class Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$1;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->superRequestRender()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V

    .line 191
    return-void
.end method
