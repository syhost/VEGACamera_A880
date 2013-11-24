.class public Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;
.super Ljava/lang/Object;
.source "PicBest_FaceInfo.java"


# instance fields
.field private mPicBestFaceImg:[B

.field private mPicBestFaceRect:Landroid/graphics/Rect;

.field private mPicBestImgId:I

.field private morient:I


# direct methods
.method public constructor <init>([BLandroid/graphics/Rect;II)V
    .locals 0
    .parameter "img"
    .parameter "rect"
    .parameter "id"
    .parameter "orient"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->mPicBestFaceImg:[B

    .line 14
    iput-object p2, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->mPicBestFaceRect:Landroid/graphics/Rect;

    .line 15
    iput p3, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->mPicBestImgId:I

    .line 16
    iput p4, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->morient:I

    .line 17
    return-void
.end method


# virtual methods
.method public GetFaceImg()[B
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->mPicBestFaceImg:[B

    return-object v0
.end method

.method public GetFaceRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->mPicBestFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public GetId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->mPicBestImgId:I

    return v0
.end method

.method public getOrient()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->morient:I

    return v0
.end method
