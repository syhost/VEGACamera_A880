.class public Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;
.super Ljava/lang/Object;
.source "PicturesBestEngine.java"


# static fields
.field private static final PIC_EDIT_FINISH:I = 0x5

.field private static final PIC_EDIT_START:I = 0x4

.field public static final PROCESS_BASIC_BASE:I = 0x1

.field private static final PROCESS_IMG_FINISH:I = 0x2

.field private static final PROCESS_IMG_NO_FACE:I = 0x3

.field private static final PROCESS_IMG_START:I = 0x1

.field private static final SAVE_DIRECT:I = 0x6

.field private static final SAVE_MERGE_RESULT:I = 0x7

.field public static mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;


# instance fields
.field private mFaceRectArray:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHistory:[I

.field private mLock:Ljava/lang/Object;

.field private mMergeThread:Ljava/lang/Thread;

.field private mPersonNum:I

.field private mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

.field private mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

.field private mProcessThread:Ljava/lang/Thread;

.field private mQuit:Z

.field private mTempHistory:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    .line 27
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    .line 29
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    .line 30
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;

    .line 31
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mPersonNum:I

    .line 33
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$1;-><init>(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    .line 217
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHistory:[I

    .line 218
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mTempHistory:[I

    .line 219
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mLock:Ljava/lang/Object;

    .line 221
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mQuit:Z

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    return-void
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Z
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mQuit:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mPersonNum:I

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mPersonNum:I

    return v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)[I
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mTempHistory:[I

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)[I
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHistory:[I

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public PicEditFinish()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method

.method public PicEditStart()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    return-void
.end method

.method public SaveDirect()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method public SaveMergeResult()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public SetbackNativeHistory([I[I)V
    .locals 3
    .parameter "history"
    .parameter "tempHistory"

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 215
    return-void

    .line 211
    :cond_0
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 212
    aget v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getLargeFace(II)[B

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public StartProcess()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    .line 133
    :cond_0
    new-instance v1, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$2;-><init>(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    .line 152
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public WriteNativeHistory([I[I)V
    .locals 2
    .parameter "history"
    .parameter "tempHistory"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mHistory:[I

    .line 226
    iput-object p2, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mTempHistory:[I

    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 228
    monitor-exit v1

    .line 266
    :goto_0
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine$3;-><init>(Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getImageId()I
    .locals 8

    .prologue
    .line 186
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;

    .line 187
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->getReferenceImageId()I

    move-result v3

    .line 188
    .local v3, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v6

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 198
    return v3

    .line 189
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v6

    aget-object v4, v6, v1

    .line 190
    .local v4, info:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v6

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v6

    aget-object v0, v6, v5

    .line 192
    .local v0, faceInfo:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->GetId()I

    move-result v2

    .line 193
    .local v2, imageId:I
    if-ne v2, v3, :cond_2

    .line 194
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->GetFaceRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getLargeFace(II)[B
    .locals 1
    .parameter "currentPerson"
    .parameter "currentFace"

    .prologue
    .line 177
    sget-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_GetImageResult(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getMergeResult()[B
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_GetThumbNailBeforeConfirmProcessing()[B

    move-result-object v0

    return-object v0
.end method

.method public getPersonNum()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mPersonNum:I

    return v0
.end method

.method public getProcessResult()Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    return-object v0
.end method

.method public getRectVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mFaceRectArray:Ljava/util/Vector;

    return-object v0
.end method

.method public init(II[Ljava/lang/String;I)I
    .locals 9
    .parameter "imgW"
    .parameter "imgH"
    .parameter "pathArray"
    .parameter "imgNum"

    .prologue
    .line 71
    const/4 v7, 0x0

    .line 72
    .local v7, ret:I
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    .line 73
    sget-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_UnInit()V

    .line 74
    sget-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_Init(IIIII)I

    move-result v7

    .line 76
    const/4 v0, -0x1

    if-ne v0, v7, :cond_0

    move v8, v7

    .line 86
    .end local v7           #ret:I
    .local v8, ret:I
    :goto_0
    return v8

    .line 80
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, p4, :cond_2

    :cond_1
    move v8, v7

    .line 86
    .end local v7           #ret:I
    .restart local v8       #ret:I
    goto :goto_0

    .line 81
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_2
    sget-object v0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    aget-object v1, p3, v6

    invoke-virtual {v0, v6, v1}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_SetImgPath(ILjava/lang/String;)I

    move-result v7

    .line 82
    if-nez v7, :cond_1

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public makeDirectories(Ljava/lang/String;)V
    .locals 2
    .parameter "sourceDir"

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_0
    return-void
.end method

.method public setProcessListener(Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessListener:Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;

    .line 68
    return-void
.end method

.method public uninit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iput-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mProcessThread:Ljava/lang/Thread;

    .line 99
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mQuit:Z

    .line 100
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_1
    iput-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mMergeThread:Ljava/lang/Thread;

    .line 109
    :cond_1
    sget-object v1, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->mNative:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->PicBest_UnInit()V

    .line 113
    :cond_2
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
