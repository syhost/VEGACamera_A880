.class Lcom/pantech/app/vegacamera/bridge/data/SnailItem$1;
.super Ljava/lang/Object;
.source "SnailItem.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/SnailItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailItem$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "jc"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem$1;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
