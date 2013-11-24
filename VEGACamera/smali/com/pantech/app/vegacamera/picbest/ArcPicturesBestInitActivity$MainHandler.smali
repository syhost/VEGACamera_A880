.class Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;
.super Landroid/os/Handler;
.source "ArcPicturesBestInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 509
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 511
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->finish()V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method
