.class public Lcom/pantech/app/vegacamera/PreviewGestures;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PreviewGestures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/PreviewGestures$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewGestures"

.field public static final ZOOM_IN:I = 0x0

.field public static final ZOOM_OUT:I = 0x1


# instance fields
.field private isEnable:Z

.field private isMulti:Z

.field private isScaling:Z

.field private mListener:Lcom/pantech/app/vegacamera/PreviewGestures$Listener;

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private mZoomState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 30
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isEnable:Z

    .line 32
    return-void
.end method


# virtual methods
.method public DispatchTouchEv(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "m"

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v4, "PreviewGestures"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dispatchTouch "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isEnable:Z

    if-nez v4, :cond_1

    .line 57
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isScaling:Z

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 97
    :cond_0
    :goto_0
    return v3

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 67
    .local v0, act:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 68
    .local v2, ptrIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 70
    .local v1, ptrId:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 73
    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    :cond_2
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    goto :goto_0

    .line 75
    :pswitch_1
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    goto :goto_1

    .line 78
    :pswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    goto :goto_1

    .line 81
    :pswitch_3
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isScaling:Z

    .line 82
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    .line 83
    iget-object v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_1

    .line 86
    :pswitch_4
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public IsEnable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isEnable:Z

    return v0
.end method

.method public IsMulti()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    return v0
.end method

.method public IsScaling()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isScaling:Z

    return v0
.end method

.method public Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isScaling:Z

    .line 145
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isEnable:Z

    .line 146
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isMulti:Z

    .line 147
    iput-object v1, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mListener:Lcom/pantech/app/vegacamera/PreviewGestures$Listener;

    .line 148
    iput-object v1, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 149
    return-void
.end method

.method public SetEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isEnable:Z

    .line 40
    return-void
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/PreviewGestures$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mListener:Lcom/pantech/app/vegacamera/PreviewGestures$Listener;

    .line 36
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .parameter "detector"

    .prologue
    const-wide v7, 0x3f847ae147ae147bL

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 104
    .local v2, scale:F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 125
    :cond_1
    :goto_0
    return v3

    .line 111
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    .line 112
    .local v1, mBoundScaleFactor:F
    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    .line 113
    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    float-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    .line 114
    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    const v6, 0x3f666666

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    const v6, 0x3f8ccccd

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_3

    move v0, v4

    .line 116
    .local v0, largeEnough:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 117
    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_4

    .line 118
    iput v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mZoomState:I

    .line 119
    iget-object v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mListener:Lcom/pantech/app/vegacamera/PreviewGestures$Listener;

    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mZoomState:I

    invoke-interface {v4, v5}, Lcom/pantech/app/vegacamera/PreviewGestures$Listener;->ZoomControl(I)V

    goto :goto_0

    .end local v0           #largeEnough:Z
    :cond_3
    move v0, v3

    .line 114
    goto :goto_1

    .line 120
    .restart local v0       #largeEnough:Z
    :cond_4
    iget v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    .line 121
    iput v3, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mZoomState:I

    .line 122
    iget-object v4, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mListener:Lcom/pantech/app/vegacamera/PreviewGestures$Listener;

    iget v5, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mZoomState:I

    invoke-interface {v4, v5}, Lcom/pantech/app/vegacamera/PreviewGestures$Listener;->ZoomControl(I)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 130
    const-string v0, "PreviewGestures"

    const-string v1, "onScaleBegin()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->mScaleFactor:F

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isScaling:Z

    .line 133
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 138
    const-string v0, "PreviewGestures"

    const-string v1, "onScaleEnd()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/PreviewGestures;->isScaling:Z

    .line 140
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 141
    return-void
.end method
