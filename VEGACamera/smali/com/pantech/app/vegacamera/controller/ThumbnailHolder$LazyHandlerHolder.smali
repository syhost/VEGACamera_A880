.class Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHandlerHolder"
.end annotation


# static fields
.field public static final sHandler:Landroid/os/Handler;

.field private static final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ClearThumbnail"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    .line 18
    sget-object v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder$1;

    invoke-direct {v2}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
