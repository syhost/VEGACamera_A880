.class Lcom/pantech/app/vegacamera/ui/ZoomControlBar$1;
.super Ljava/lang/Object;
.source "ZoomControlBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ui/ZoomControlBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/ui/ZoomControlBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$1;->this$0:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$1;->this$0:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$1;->this$0:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    #getter for: Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iState:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->access$0(Lcom/pantech/app/vegacamera/ui/ZoomControlBar;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_PerformZoom(IZ)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->access$1(Lcom/pantech/app/vegacamera/ui/ZoomControlBar;IZ)V

    .line 52
    return-void
.end method
