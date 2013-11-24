.class Lcom/pantech/app/vegacamera/video/EffectsRecorder$5;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sendMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$5;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$5;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 698
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$5;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 699
    return-void
.end method
