.class Lcom/pantech/app/vegacamera/bridge/data/UriImage$1;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/UriImage;->prepareInputFile(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/UriImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriImage$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit p0

    .line 140
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
