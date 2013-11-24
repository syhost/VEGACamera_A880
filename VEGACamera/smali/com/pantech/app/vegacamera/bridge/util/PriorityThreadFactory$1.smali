.class Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory$1;->this$0:Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;

    .line 35
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory$1;->this$0:Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;

    #getter for: Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->access$0(Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 39
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 40
    return-void
.end method
