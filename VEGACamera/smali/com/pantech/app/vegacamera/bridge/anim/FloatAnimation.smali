.class public Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;
.super Lcom/pantech/app/vegacamera/bridge/anim/Animation;
.source "FloatAnimation.java"


# instance fields
.field private mCurrent:F

.field private final mFrom:F

.field private final mTo:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/anim/Animation;-><init>()V

    .line 26
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mFrom:F

    .line 27
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mTo:F

    .line 28
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mCurrent:F

    .line 29
    invoke-virtual {p0, p3}, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->setDuration(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mCurrent:F

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mFrom:F

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mTo:F

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/anim/FloatAnimation;->mCurrent:F

    .line 35
    return-void
.end method
