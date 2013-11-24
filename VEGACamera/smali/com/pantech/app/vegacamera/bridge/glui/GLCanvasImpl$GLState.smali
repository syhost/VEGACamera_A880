.class Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private mBlendEnabled:Z

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTextureAlpha:F

.field private mTextureTarget:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/16 v2, 0xde1

    const/4 v4, 0x1

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 570
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 571
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    .line 572
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 573
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 578
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 581
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 584
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 586
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 587
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 588
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 590
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 593
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 594
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 596
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 597
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 600
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 601
    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0xbe2

    .line 659
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 662
    if-eqz p1, :cond_1

    .line 663
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 6
    .parameter "color"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x437f

    .line 632
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f733333

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 636
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 638
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 640
    ushr-int/lit8 v1, p1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x477fff00

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    div-float v0, v1, v5

    .line 641
    .local v0, prealpha:F
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 642
    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 641
    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 643
    return-void

    .line 632
    .end local v0           #prealpha:F
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 611
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 614
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public setTexEnvMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 604
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 607
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    .line 618
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 620
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 621
    const v0, 0x3f733333

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 624
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 627
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method

.method public setTextureTarget(I)V
    .locals 2
    .parameter "target"

    .prologue
    .line 647
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    if-ne v0, p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 652
    :cond_2
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    .line 653
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0
.end method
