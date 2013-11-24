.class Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder$1;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ThumbnailHolder$LazyHandlerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 28
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 25
    :pswitch_0
    #calls: Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->cleanLastThumbnail()V
    invoke-static {}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->access$0()V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
