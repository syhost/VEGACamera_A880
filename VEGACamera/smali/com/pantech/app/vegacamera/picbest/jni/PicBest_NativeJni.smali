.class public Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;
.super Ljava/lang/Object;
.source "PicBest_NativeJni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PicBest_NativeJni"


# instance fields
.field private mPtrInJni:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_NativeJni;->mPtrInJni:I

    .line 11
    const-string v0, "PicBest_NativeJni"

    const-string v1, "PicBest_NativeJni Contructor!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/picbest/util/ArcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public native PicBest_ConfirmProcessing()[B
.end method

.method public native PicBest_GetImageResult(II)[B
.end method

.method public native PicBest_GetResultFaceInfo()Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
.end method

.method public native PicBest_GetThumbNailBeforeConfirmProcessing()[B
.end method

.method public native PicBest_Init(IIIII)I
.end method

.method public native PicBest_ProcessImg()Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;
.end method

.method public native PicBest_SetData(I[BI)I
.end method

.method public native PicBest_SetImgPath(ILjava/lang/String;)I
.end method

.method public native PicBest_UnInit()V
.end method
