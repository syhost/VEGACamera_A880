.class public Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;
.super Ljava/lang/Object;
.source "MosaicRenderer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "jni_panorama"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init()I
.end method

.method public static native preprocess([F)V
.end method

.method public static native reset(IIZ)V
.end method

.method public static native setWarping(Z)V
.end method

.method public static native step()V
.end method

.method public static native transferGPUtoCPU()V
.end method

.method public static native updateMatrix()V
.end method
