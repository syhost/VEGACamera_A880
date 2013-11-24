.class Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog$1;->this$1:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog$1;->this$1:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog$1;->this$1:Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;

    #calls: Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->processList()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;->access$0(Lcom/pantech/app/vegacamera/bridge/util/Profile$Watchdog;)V

    .line 61
    monitor-exit v1

    .line 64
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
