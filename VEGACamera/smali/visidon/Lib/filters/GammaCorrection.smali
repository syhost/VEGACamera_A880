.class public Lvisidon/Lib/filters/GammaCorrection;
.super Lvisidon/Lib/utils/Filter;
.source "GammaCorrection.java"


# static fields
.field private static fragmentShader:Ljava/lang/String;

.field private static shaderStrings:[[Ljava/lang/String;

.field private static vertexShader:Ljava/lang/String;


# instance fields
.field private gamma:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const-string v0, "precision mediump float;uniform sampler2D sTexture;uniform float fGamma;varying vec2 vTextureCoord;void main() {vec4 color = texture2D(sTexture, vTextureCoord);vec4 newColor = min(pow(color, vec4(fGamma)), vec4(1.0));gl_FragColor = newColor;}"

    .line 11
    sput-object v0, Lvisidon/Lib/filters/GammaCorrection;->fragmentShader:Ljava/lang/String;

    .line 29
    const-string v0, "attribute vec2 aPosition;varying vec2 vTextureCoord;void main() {gl_Position = vec4(aPosition, 0.0, 1.0);vTextureCoord = (aPosition + 1.0) * 0.5;}"

    .line 28
    sput-object v0, Lvisidon/Lib/filters/GammaCorrection;->vertexShader:Ljava/lang/String;

    .line 38
    new-array v0, v4, [[Ljava/lang/String;

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lvisidon/Lib/filters/GammaCorrection;->fragmentShader:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lvisidon/Lib/filters/GammaCorrection;->vertexShader:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 38
    sput-object v0, Lvisidon/Lib/filters/GammaCorrection;->shaderStrings:[[Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    sget-object v1, Lvisidon/Lib/filters/GammaCorrection;->shaderStrings:[[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lvisidon/Lib/utils/Filter;-><init>(Landroid/content/Context;I[[Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getGamma()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lvisidon/Lib/filters/GammaCorrection;->gamma:F

    return v0
.end method

.method public render()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lvisidon/Lib/filters/GammaCorrection;->useFrameBuffer()V

    .line 52
    invoke-virtual {p0, v3}, Lvisidon/Lib/filters/GammaCorrection;->getShader(I)Lvisidon/Lib/utils/Shader;

    move-result-object v0

    .line 54
    .local v0, shader:Lvisidon/Lib/utils/Shader;
    invoke-virtual {v0}, Lvisidon/Lib/utils/Shader;->useProgram()V

    .line 56
    iget v1, p0, Lvisidon/Lib/filters/GammaCorrection;->gamma:F

    const-string v2, "fGamma"

    invoke-virtual {v0, v1, v2}, Lvisidon/Lib/utils/Shader;->setUniform(FLjava/lang/String;)V

    .line 58
    invoke-virtual {p0, v3}, Lvisidon/Lib/filters/GammaCorrection;->getInputTextureId(I)I

    move-result v1

    const-string v2, "sTexture"

    invoke-virtual {v0, v3, v1, v2}, Lvisidon/Lib/utils/Shader;->useTexture(IILjava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lvisidon/Lib/utils/Shader;->draw()V

    .line 62
    return-void
.end method

.method public setGamma(F)V
    .locals 0
    .parameter "gamma"

    .prologue
    .line 69
    iput p1, p0, Lvisidon/Lib/filters/GammaCorrection;->gamma:F

    .line 70
    return-void
.end method
