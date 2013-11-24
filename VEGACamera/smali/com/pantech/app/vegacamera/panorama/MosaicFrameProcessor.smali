.class public Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# static fields
.field private static final FRAME_COUNT_INDEX:I = 0x9

.field private static final HR_TO_LR_DOWNSAMPLE_FACTOR:I = 0x4

.field private static final MAX_NUMBER_OF_FRAMES:I = 0x64

.field private static final NUM_FRAMES_IN_BUFFER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MosaicFrameProcessor"

.field private static final WINDOW_SIZE:I = 0x3

.field private static final X_COORD_INDEX:I = 0x2

.field private static final Y_COORD_INDEX:I = 0x5

.field private static sMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaTime:[F

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private final mFrameTimestamp:[J

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mLastProcessedFrameTimestamp:J

.field private mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;

.field private mTotalDeltaTime:F

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFrameTimestamp:[J

    .line 39
    iput v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 40
    iput v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 42
    iput v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 43
    iput v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 50
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    .line 51
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    .line 52
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    .line 53
    iput v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    .line 54
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 55
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 56
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 78
    new-instance v0, Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/panorama/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    .line 74
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    return-object v0
.end method

.method private setupMosaicer(III)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    const/16 v3, 0x2c

    .line 117
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupMosaicer w, h="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MosaicFrameProcessor in use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->allocateMosaicMemory(II)V

    .line 123
    return-void
.end method


# virtual methods
.method public calculateTranslationRate(J)V
    .locals 7
    .parameter "now"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, frameData:[F
    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->setSourceImageFromGPU()[F

    move-result-object v0

    .line 207
    const/16 v4, 0x9

    aget v4, v0, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 208
    const/4 v4, 0x2

    aget v2, v0, v4

    .line 209
    .local v2, translationCurrX:F
    const/4 v4, 0x5

    aget v3, v0, v4

    .line 211
    .local v3, translationCurrY:F
    iget-wide v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    long-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 213
    iput v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 214
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    .line 215
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 245
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    .line 222
    .local v1, idx:I
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 223
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 224
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 225
    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, v4, v1

    .line 226
    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, v4, v1

    .line 227
    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    sub-long v5, p1, v5

    long-to-float v5, v5

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    aput v5, v4, v1

    .line 228
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 229
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 230
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 238
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    .line 239
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    .line 241
    iput v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 242
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    .line 243
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 244
    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->freeMosaicMemory()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 103
    monitor-exit p0

    .line 106
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createMosaic(Z)I
    .locals 1
    .parameter "highRes"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->createMosaic(Z)I

    move-result v0

    return v0
.end method

.method public getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->getFinalMosaicNV21()[B

    move-result-object v0

    return-object v0
.end method

.method public initialize(III)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    .line 90
    iput p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    .line 91
    iput p2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    .line 92
    iput p3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 93
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->setStripType(I)V

    .line 95
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->reset()V

    .line 96
    return-void
.end method

.method public isMosaicMemoryAllocated()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    return v0
.end method

.method public processFrame()V
    .locals 11

    .prologue
    const/high16 v10, 0x4080

    .line 160
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 167
    .local v6, t1:J
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFillIn:I

    aput-wide v6, v0, v1

    .line 169
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 170
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 174
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 175
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    aget-wide v8, v0, v1

    .line 182
    .local v8, timestamp:J
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 185
    invoke-virtual {p0, v8, v9}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->calculateTranslationRate(J)V

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 190
    mul-float/2addr v4, v10

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    .line 191
    iget v10, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    .line 189
    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 196
    mul-float/2addr v4, v10

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    .line 197
    iget v10, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    .line 195
    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "cancel"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 128
    iput v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 129
    iput v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 130
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 131
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 132
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 133
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 134
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    .line 135
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 136
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    .line 137
    iput v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    .line 138
    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 139
    iput v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->reset()V

    .line 146
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    aput v3, v1, v0

    .line 142
    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    aput v3, v1, v0

    .line 143
    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    aput v3, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setProgressListener(Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;

    .line 83
    return-void
.end method

.method public setStripType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/pantech/app/vegacamera/panorama/Mosaic;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/panorama/Mosaic;->setStripType(I)V

    .line 114
    return-void
.end method
