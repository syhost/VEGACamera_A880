.class public Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;
.super Ljava/lang/Object;
.source "PicBest_FaceGroupInfo.java"


# instance fields
.field private mPicBestBestId:I

.field private mPicBestFaceInfo:[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

.field private mResFaceRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>([Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;Landroid/graphics/Rect;I)V
    .locals 0
    .parameter "info"
    .parameter "resFaceRect"
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->mPicBestFaceInfo:[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    .line 13
    iput p3, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->mPicBestBestId:I

    .line 14
    iput-object p2, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->mResFaceRect:Landroid/graphics/Rect;

    .line 15
    return-void
.end method


# virtual methods
.method public GetBestID()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->mPicBestBestId:I

    return v0
.end method

.method public GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->mPicBestFaceInfo:[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    return-object v0
.end method

.method public getResFaceRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->mResFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method
