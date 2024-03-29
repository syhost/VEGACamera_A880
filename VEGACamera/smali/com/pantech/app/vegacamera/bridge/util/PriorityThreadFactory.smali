.class public Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mName:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mPriority:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .parameter "r"

    .prologue
    .line 35
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory$1;-><init>(Lcom/pantech/app/vegacamera/bridge/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
