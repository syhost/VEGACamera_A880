.class public Lcom/pantech/app/vegacamera/util/StorageFactory$MainHandler;
.super Landroid/os/Handler;
.source "StorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/util/StorageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/util/StorageFactory;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/util/StorageFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/app/vegacamera/util/StorageFactory$MainHandler;->this$0:Lcom/pantech/app/vegacamera/util/StorageFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 39
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory$MainHandler;->removeMessages(I)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method
