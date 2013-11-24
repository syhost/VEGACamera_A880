.class public abstract Lvisidon/Lib/utils/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected frameBuffer:Lvisidon/Lib/utils/FrameBuffer;

.field private inputTextureIds:[I

.field private shaders:[Lvisidon/Lib/utils/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[[I)V
    .locals 1
    .parameter "context"
    .parameter "inputTextureCount"
    .parameter "shaderResourceIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lvisidon/Lib/utils/Filter;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p3}, Lvisidon/Lib/utils/Filter;->initializeShaders([[I)V

    .line 43
    new-array v0, p2, [I

    iput-object v0, p0, Lvisidon/Lib/utils/Filter;->inputTextureIds:[I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "inputTextureCount"
    .parameter "shaders"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lvisidon/Lib/utils/Filter;->context:Landroid/content/Context;

    .line 50
    invoke-direct {p0, p3}, Lvisidon/Lib/utils/Filter;->initializeShaders([[Ljava/lang/String;)V

    .line 52
    new-array v0, p2, [I

    iput-object v0, p0, Lvisidon/Lib/utils/Filter;->inputTextureIds:[I

    .line 54
    return-void
.end method

.method private initializeShaders([[I)V
    .locals 6
    .parameter "shaderResourceIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    array-length v4, p1

    new-array v4, v4, [Lvisidon/Lib/utils/Shader;

    iput-object v4, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    .line 90
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 102
    return-void

    .line 92
    :cond_0
    new-instance v2, Lvisidon/Lib/utils/Shader;

    invoke-direct {v2}, Lvisidon/Lib/utils/Shader;-><init>()V

    .line 94
    .local v2, shader:Lvisidon/Lib/utils/Shader;
    aget-object v4, p1, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lvisidon/Lib/utils/Filter;->loadRawString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, vertexSource:Ljava/lang/String;
    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lvisidon/Lib/utils/Filter;->loadRawString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, fragmentSource:Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Lvisidon/Lib/utils/Shader;->setProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    aput-object v2, v4, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initializeShaders([[Ljava/lang/String;)V
    .locals 6
    .parameter "shaderStrings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    array-length v4, p1

    new-array v4, v4, [Lvisidon/Lib/utils/Shader;

    iput-object v4, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 83
    return-void

    .line 73
    :cond_0
    new-instance v2, Lvisidon/Lib/utils/Shader;

    invoke-direct {v2}, Lvisidon/Lib/utils/Shader;-><init>()V

    .line 75
    .local v2, shader:Lvisidon/Lib/utils/Shader;
    aget-object v4, p1, v1

    const/4 v5, 0x1

    aget-object v3, v4, v5

    .line 76
    .local v3, vertexSource:Ljava/lang/String;
    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 77
    .local v0, fragmentSource:Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Lvisidon/Lib/utils/Shader;->setProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    aput-object v2, v4, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadRawString(I)Ljava/lang/String;
    .locals 5
    .parameter "rawId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v4, p0, Lvisidon/Lib/utils/Filter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 118
    .local v2, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 121
    .local v1, buf:[B
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 122
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public getInputTextureId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 32
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->inputTextureIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getOutputTextureId()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->frameBuffer:Lvisidon/Lib/utils/FrameBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvisidon/Lib/utils/FrameBuffer;->getTexture(I)I

    move-result v0

    return v0
.end method

.method protected getShader(I)Lvisidon/Lib/utils/Shader;
    .locals 1
    .parameter "index"

    .prologue
    .line 109
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->shaders:[Lvisidon/Lib/utils/Shader;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public initializeFrameBuffer(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "frameBufferType"

    .prologue
    .line 58
    new-instance v0, Lvisidon/Lib/utils/FrameBuffer;

    invoke-direct {v0, p1, p2, p3}, Lvisidon/Lib/utils/FrameBuffer;-><init>(III)V

    iput-object v0, p0, Lvisidon/Lib/utils/Filter;->frameBuffer:Lvisidon/Lib/utils/FrameBuffer;

    .line 60
    return-void
.end method

.method public loadTexture(IIIILjava/nio/Buffer;)I
    .locals 10
    .parameter "internalFormat"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "pixels"

    .prologue
    .line 133
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 135
    .local v9, textures:[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 136
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v9, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v3, p3

    move v4, p4

    move v6, p1

    move v7, p2

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 139
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/high16 v2, 0x4618

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 140
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/high16 v2, 0x4618

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 141
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 142
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 144
    const/4 v0, 0x0

    aget v0, v9, v0

    return v0
.end method

.method public releaseFrameBuffer()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->frameBuffer:Lvisidon/Lib/utils/FrameBuffer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->frameBuffer:Lvisidon/Lib/utils/FrameBuffer;

    invoke-virtual {v0}, Lvisidon/Lib/utils/FrameBuffer;->reset()V

    .line 65
    :cond_0
    return-void
.end method

.method public abstract render()V
.end method

.method public setInputTextureId(II)V
    .locals 1
    .parameter "textureId"
    .parameter "index"

    .prologue
    .line 28
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->inputTextureIds:[I

    aput p1, v0, p2

    .line 29
    return-void
.end method

.method protected useFrameBuffer()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lvisidon/Lib/utils/Filter;->frameBuffer:Lvisidon/Lib/utils/FrameBuffer;

    invoke-virtual {v0}, Lvisidon/Lib/utils/FrameBuffer;->bind()V

    .line 114
    return-void
.end method
