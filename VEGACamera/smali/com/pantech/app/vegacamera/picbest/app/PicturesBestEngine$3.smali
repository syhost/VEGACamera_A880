.class Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;
.super Ljava/lang/Thread;
.source "PicturesBestEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->WriteNativeHistory([I[I)V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    .line 233
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 237
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mTempHistory:[I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$6(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)[I

    move-result-object v4

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 242
    sget-object v4, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_GetResultFaceInfo()Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    move-result-object v1

    .line 243
    .local v1, faceInfo:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$8(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 245
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 249
    const/4 v1, 0x0

    .line 250
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$3(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$9(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 253
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$9(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mQuit:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$10(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    return-void

    .line 238
    .end local v1           #faceInfo:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    .end local v3           #j:I
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHistory:[I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$7(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)[I

    move-result-object v4

    aget v4, v4, v2

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mTempHistory:[I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$6(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v4, v5, :cond_2

    .line 239
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mTempHistory:[I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$6(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v4, v2, v5}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getLargeFace(II)[B

    .line 237
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .restart local v1       #faceInfo:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    .restart local v3       #j:I
    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;->this$0:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    #getter for: Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->access$8(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->getResFaceRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 251
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
