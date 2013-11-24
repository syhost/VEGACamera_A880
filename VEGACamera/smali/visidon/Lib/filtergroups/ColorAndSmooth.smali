.class public Lvisidon/Lib/filtergroups/ColorAndSmooth;
.super Lvisidon/Lib/utils/FilterGroup;
.source "ColorAndSmooth.java"


# instance fields
.field private bilateral:Lvisidon/Lib/filters/Bilateral;

.field private copy:Lvisidon/Lib/filters/CopyOES;

.field private filterStrength:I

.field private gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

.field private height:F

.field private orientationMatrix:[F

.field private pixelSize:[F

.field private secondaryFilterStrength:I

.field private transformationMatrix:[F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0, v0}, Lvisidon/Lib/utils/FilterGroup;-><init>(II)V

    .line 41
    return-void
.end method


# virtual methods
.method public getFilterStrength()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->filterStrength:I

    return v0
.end method

.method public getOrientationMatrix()[F
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->orientationMatrix:[F

    return-object v0
.end method

.method public getSecondaryFilterStrength()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->secondaryFilterStrength:I

    return v0
.end method

.method public getTransformationMatrix()[F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->transformationMatrix:[F

    return-object v0
.end method

.method public initializeFrameBuffers(III)V
    .locals 5
    .parameter "viewPortWidth"
    .parameter "viewPortHeight"
    .parameter "frameBufferType"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    invoke-virtual {p0, v2}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->getInputTextureId(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lvisidon/Lib/filters/CopyOES;->setInputTextureId(II)V

    .line 93
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    invoke-virtual {v0, p1, p2, v2}, Lvisidon/Lib/filters/CopyOES;->initializeFrameBuffer(III)V

    .line 95
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    iget-object v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    invoke-virtual {v1}, Lvisidon/Lib/filters/CopyOES;->getOutputTextureId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lvisidon/Lib/filters/Bilateral;->setInputTextureId(II)V

    .line 96
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    invoke-virtual {v0, p1, p2, v2}, Lvisidon/Lib/filters/Bilateral;->initializeFrameBuffer(III)V

    .line 98
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

    iget-object v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    invoke-virtual {v1}, Lvisidon/Lib/filters/Bilateral;->getOutputTextureId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lvisidon/Lib/filters/GammaCorrection;->setInputTextureId(II)V

    .line 99
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

    invoke-virtual {v0, p1, p2, p3}, Lvisidon/Lib/filters/GammaCorrection;->initializeFrameBuffer(III)V

    .line 101
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

    invoke-virtual {v0}, Lvisidon/Lib/filters/GammaCorrection;->getOutputTextureId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setOutputTextureId(II)V

    .line 102
    invoke-virtual {p0, v4}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setFbosInitialized(Z)V

    .line 104
    int-to-float v0, p1

    iput v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->width:F

    .line 105
    int-to-float v0, p2

    iput v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->height:F

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->pixelSize:[F

    .line 108
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->pixelSize:[F

    int-to-float v1, p1

    div-float v1, v3, v1

    aput v1, v0, v2

    .line 109
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->pixelSize:[F

    int-to-float v1, p2

    div-float v1, v3, v1

    aput v1, v0, v4

    .line 111
    return-void
.end method

.method public initializeShaders(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->isShadersInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lvisidon/Lib/filters/CopyOES;

    invoke-direct {v0, p1}, Lvisidon/Lib/filters/CopyOES;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    .line 79
    new-instance v0, Lvisidon/Lib/filters/Bilateral;

    invoke-direct {v0, p1}, Lvisidon/Lib/filters/Bilateral;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    .line 80
    new-instance v0, Lvisidon/Lib/filters/GammaCorrection;

    invoke-direct {v0, p1}, Lvisidon/Lib/filters/GammaCorrection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setShadersInitialized(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public render()V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->isShadersInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->isFbosInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->clearScreen()V

    .line 52
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    iget-object v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->orientationMatrix:[F

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/CopyOES;->setOrientationMatrix([F)V

    .line 53
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    iget-object v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->transformationMatrix:[F

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/CopyOES;->setTransformationMatrix([F)V

    .line 54
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->copy:Lvisidon/Lib/filters/CopyOES;

    invoke-virtual {v0}, Lvisidon/Lib/filters/CopyOES;->render()V

    .line 56
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    iget-object v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->pixelSize:[F

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/Bilateral;->setPixelSize([F)V

    .line 57
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    iget v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->filterStrength:I

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/Bilateral;->setFilterStrength(I)V

    .line 58
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    iget v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->width:F

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/Bilateral;->setWidth(F)V

    .line 59
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    iget v1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->height:F

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/Bilateral;->setHeight(F)V

    .line 60
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->bilateral:Lvisidon/Lib/filters/Bilateral;

    invoke-virtual {v0}, Lvisidon/Lib/filters/Bilateral;->render()V

    .line 62
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

    const v1, 0x3fb33333

    const v2, 0x3f4ccccd

    iget v3, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->secondaryFilterStrength:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lvisidon/Lib/filters/GammaCorrection;->setGamma(F)V

    .line 63
    iget-object v0, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->gammaCorrection:Lvisidon/Lib/filters/GammaCorrection;

    invoke-virtual {v0}, Lvisidon/Lib/filters/GammaCorrection;->render()V

    .line 69
    :cond_0
    return-void
.end method

.method public setFilterStrength(I)V
    .locals 0
    .parameter "filterStrength"

    .prologue
    .line 146
    iput p1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->filterStrength:I

    .line 147
    return-void
.end method

.method public setOrientationMatrix([F)V
    .locals 0
    .parameter "orientationMatrix"

    .prologue
    .line 134
    iput-object p1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->orientationMatrix:[F

    .line 135
    return-void
.end method

.method public setSecondaryFilterStrength(I)V
    .locals 0
    .parameter "filterStrength"

    .prologue
    .line 158
    iput p1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->secondaryFilterStrength:I

    .line 159
    return-void
.end method

.method public setTransformationMatrix([F)V
    .locals 0
    .parameter "transformationMatrix"

    .prologue
    .line 122
    iput-object p1, p0, Lvisidon/Lib/filtergroups/ColorAndSmooth;->transformationMatrix:[F

    .line 123
    return-void
.end method
