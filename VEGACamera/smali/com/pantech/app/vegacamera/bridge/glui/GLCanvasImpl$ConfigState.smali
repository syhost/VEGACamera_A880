.class Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mMatrix:[F

    .line 795
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 801
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 802
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setAlpha(F)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mMatrix:[F

    aget v0, v0, v3

    const/high16 v1, -0x80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mMatrix:[F

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    :cond_1
    return-void
.end method
