.class Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;
.super Ljava/lang/Thread;
.source "PicturesBestEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->StartProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    move-result-object v0

    instance-of v0, v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    if-eqz v0, :cond_1

    .line 137
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    sget-object v1, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_ProcessImg()Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    move-result-object v1

    #setter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$1(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;)V

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$2(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$3(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$2(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v1

    array-length v1, v1

    #setter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mPersonNum:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$4(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;I)V

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mPersonNum:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$5(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$3(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$3(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
