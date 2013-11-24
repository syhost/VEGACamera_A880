.class public abstract Lcom/android/internal/hardware/AbsSkyLightPattern;
.super Ljava/lang/Object;
.source "AbsSkyLightPattern.java"

# interfaces
.implements Lcom/android/internal/hardware/ISkyLightPattern;


# instance fields
.field protected mPattern:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/internal/hardware/AbsSkyLightPattern;->mPattern:[I

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getAppId()I
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 18
    iget-object v1, p0, Lcom/android/internal/hardware/AbsSkyLightPattern;->mPattern:[I

    array-length v0, v1

    .line 19
    .local v0, length:I
    div-int/lit8 v1, v0, 0x2

    return v1
.end method

.method public getData(I[B)I
    .locals 5
    .parameter "pos"
    .parameter "led"

    .prologue
    .line 23
    mul-int/lit8 v0, p1, 0x2

    .line 24
    .local v0, actualPos:I
    iget-object v2, p0, Lcom/android/internal/hardware/AbsSkyLightPattern;->mPattern:[I

    aget v1, v2, v0

    .line 26
    .local v1, result:I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/hardware/AbsSkyLightPattern;->mPattern:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 28
    return v1
.end method
