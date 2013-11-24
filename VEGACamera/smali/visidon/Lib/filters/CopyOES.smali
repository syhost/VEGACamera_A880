.class public Lvisidon/Lib/filters/CopyOES;
.super Lvisidon/Lib/utils/Filter;
.source "CopyOES.java"


# static fields
.field private static fragmentShader:Ljava/lang/String;

.field private static shaderStrings:[[Ljava/lang/String;

.field private static vertexShader:Ljava/lang/String;


# instance fields
.field private orientationMatrix:[F

.field private transformationMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES sTexture;varying vec2 vTextureCoord;void main() {gl_FragColor = texture2D(sTexture, vTextureCoord);}"

    .line 22
    sput-object v0, Lvisidon/Lib/filters/CopyOES;->fragmentShader:Ljava/lang/String;

    .line 37
    const-string v0, "uniform mat4 uOrientationM;uniform mat4 uTransformM;attribute vec2 aPosition;varying vec2 vTextureCoord;void main() {gl_Position = vec4(aPosition, 0.0, 1.0);vTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"

    .line 36
    sput-object v0, Lvisidon/Lib/filters/CopyOES;->vertexShader:Ljava/lang/String;

    .line 54
    new-array v0, v4, [[Ljava/lang/String;

    .line 55
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lvisidon/Lib/filters/CopyOES;->fragmentShader:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lvisidon/Lib/filters/CopyOES;->vertexShader:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 54
    sput-object v0, Lvisidon/Lib/filters/CopyOES;->shaderStrings:[[Ljava/lang/String;

    .line 16
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
    .line 59
    const/4 v0, 0x1

    sget-object v1, Lvisidon/Lib/filters/CopyOES;->shaderStrings:[[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lvisidon/Lib/utils/Filter;-><init>(Landroid/content/Context;I[[Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getOrientationMatrix()[F
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lvisidon/Lib/filters/CopyOES;->orientationMatrix:[F

    return-object v0
.end method

.method public getTransformationMatrix()[F
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lvisidon/Lib/filters/CopyOES;->transformationMatrix:[F

    return-object v0
.end method

.method public render()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Lvisidon/Lib/filters/CopyOES;->useFrameBuffer()V

    .line 70
    invoke-virtual {p0, v3}, Lvisidon/Lib/filters/CopyOES;->getShader(I)Lvisidon/Lib/utils/Shader;

    move-result-object v0

    .line 72
    .local v0, shader:Lvisidon/Lib/utils/Shader;
    invoke-virtual {v0}, Lvisidon/Lib/utils/Shader;->useProgram()V

    .line 74
    iget-object v1, p0, Lvisidon/Lib/filters/CopyOES;->orientationMatrix:[F

    const-string v2, "uOrientationM"

    invoke-virtual {v0, v1, v3, v2}, Lvisidon/Lib/utils/Shader;->setUniformMatrix([FZLjava/lang/String;)V

    .line 75
    iget-object v1, p0, Lvisidon/Lib/filters/CopyOES;->transformationMatrix:[F

    const-string v2, "uTransformM"

    invoke-virtual {v0, v1, v3, v2}, Lvisidon/Lib/utils/Shader;->setUniformMatrix([FZLjava/lang/String;)V

    .line 77
    invoke-virtual {p0, v3}, Lvisidon/Lib/filters/CopyOES;->getInputTextureId(I)I

    move-result v1

    const-string v2, "sTexture"

    invoke-virtual {v0, v3, v1, v2}, Lvisidon/Lib/utils/Shader;->useExternalTexture(IILjava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lvisidon/Lib/utils/Shader;->draw()V

    .line 81
    return-void
.end method

.method public setOrientationMatrix([F)V
    .locals 0
    .parameter "orientationMatrix"

    .prologue
    .line 96
    iput-object p1, p0, Lvisidon/Lib/filters/CopyOES;->orientationMatrix:[F

    .line 97
    return-void
.end method

.method public setTransformationMatrix([F)V
    .locals 0
    .parameter "transformationMatrix"

    .prologue
    .line 88
    iput-object p1, p0, Lvisidon/Lib/filters/CopyOES;->transformationMatrix:[F

    .line 89
    return-void
.end method
