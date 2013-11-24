.class public Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
.super Ljava/lang/Object;
.source "PicBest_PersonGroupInfo.java"


# instance fields
.field private mPicBestFaceGroupInfo:[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

.field private mReferenceImageId:I


# direct methods
.method public constructor <init>([Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;I)V
    .locals 0
    .parameter "info"
    .parameter "id"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->mPicBestFaceGroupInfo:[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    .line 10
    iput p2, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->mReferenceImageId:I

    .line 11
    return-void
.end method


# virtual methods
.method public GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->mPicBestFaceGroupInfo:[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    return-object v0
.end method

.method public getReferenceImageId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->mReferenceImageId:I

    return v0
.end method
