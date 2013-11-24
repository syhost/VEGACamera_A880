.class public final Lvisidon/Lib/utils/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field private final FULL_QUAD_COORDS:[B

.field private mProgram:I

.field private mShaderFragment:I

.field private final mShaderHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShaderVertex:I

.field private vertices:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    .line 18
    iput v1, p0, Lvisidon/Lib/utils/Shader;->mShaderFragment:I

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvisidon/Lib/utils/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    .line 21
    iput v1, p0, Lvisidon/Lib/utils/Shader;->mShaderVertex:I

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lvisidon/Lib/utils/Shader;->FULL_QUAD_COORDS:[B

    .line 38
    invoke-direct {p0}, Lvisidon/Lib/utils/Shader;->initializeVertices()V

    .line 40
    return-void

    .line 23
    :array_0
    .array-data 0x1
        0xfft
        0x1t
        0xfft
        0xfft
        0x1t
        0x1t
        0x1t
        0xfft
    .end array-data
.end method

.method private initializeVertices()V
    .locals 2

    .prologue
    .line 44
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lvisidon/Lib/utils/Shader;->vertices:Ljava/nio/ByteBuffer;

    .line 45
    iget-object v0, p0, Lvisidon/Lib/utils/Shader;->vertices:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lvisidon/Lib/utils/Shader;->FULL_QUAD_COORDS:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 104
    .local v2, shader:I
    if-eqz v2, :cond_0

    .line 105
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 106
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 107
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 108
    .local v0, compiled:[I
    const v3, 0x8b81

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 109
    aget v3, v0, v4

    if-nez v3, :cond_0

    .line 110
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, error:Ljava/lang/String;
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 112
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v0           #compiled:[I
    .end local v1           #error:Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lvisidon/Lib/utils/Shader;->mShaderFragment:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 31
    iget v0, p0, Lvisidon/Lib/utils/Shader;->mShaderVertex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 32
    iget v0, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lvisidon/Lib/utils/Shader;->mShaderFragment:I

    iput v0, p0, Lvisidon/Lib/utils/Shader;->mShaderVertex:I

    iput v0, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    .line 34
    return-void
.end method

.method public draw()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 161
    const-string v1, "aPosition"

    invoke-virtual {p0, v1}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, aPosition:I
    const/4 v1, 0x2

    const/16 v2, 0x1400

    iget-object v5, p0, Lvisidon/Lib/utils/Shader;->vertices:Ljava/nio/ByteBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 163
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 164
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 166
    return-void
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, -0x1

    .line 58
    iget-object v1, p0, Lvisidon/Lib/utils/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lvisidon/Lib/utils/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 61
    :cond_0
    iget v1, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 62
    .local v0, handle:I
    if-ne v0, v2, :cond_1

    .line 63
    iget v1, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 65
    :cond_1
    if-ne v0, v2, :cond_2

    .line 70
    const-string v1, "GlslShader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get attrib location for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lvisidon/Lib/utils/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs getHandles([Ljava/lang/String;)[I
    .locals 3
    .parameter "names"

    .prologue
    .line 86
    array-length v2, p1

    new-array v1, v2, [I

    .line 87
    .local v1, res:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 90
    return-object v1

    .line 88
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "vertexSource"
    .parameter "fragmentSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const v3, 0x8b31

    invoke-direct {p0, v3, p1}, Lvisidon/Lib/utils/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lvisidon/Lib/utils/Shader;->mShaderVertex:I

    .line 132
    const v3, 0x8b30

    invoke-direct {p0, v3, p2}, Lvisidon/Lib/utils/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lvisidon/Lib/utils/Shader;->mShaderFragment:I

    .line 133
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 134
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 135
    iget v3, p0, Lvisidon/Lib/utils/Shader;->mShaderVertex:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 136
    iget v3, p0, Lvisidon/Lib/utils/Shader;->mShaderFragment:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 137
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 138
    new-array v1, v5, [I

    .line 139
    .local v1, linkStatus:[I
    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 140
    aget v3, v1, v4

    if-eq v3, v5, :cond_0

    .line 141
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, error:Ljava/lang/String;
    invoke-virtual {p0}, Lvisidon/Lib/utils/Shader;->deleteProgram()V

    .line 143
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #linkStatus:[I
    :cond_0
    iput v2, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    .line 147
    iget-object v3, p0, Lvisidon/Lib/utils/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 148
    return-void
.end method

.method public setUniform(FLjava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "handle"

    .prologue
    .line 251
    invoke-virtual {p0, p2}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, handleId:I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 255
    return-void
.end method

.method public setUniform(ILjava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "handle"

    .prologue
    .line 244
    invoke-virtual {p0, p2}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, handleId:I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 247
    return-void
.end method

.method public setUniform([FLjava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "handle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0, p2}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, handleId:I
    array-length v1, p1

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 192
    :pswitch_0
    invoke-static {v0, v3, p1, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-static {v0, v3, p1, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-static {v0, v3, p1, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUniformMatrix([FZLjava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "transpose"
    .parameter "handle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0, p3}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, handleId:I
    array-length v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 222
    :sswitch_0
    invoke-static {v0, v3, p2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    goto :goto_0

    .line 228
    :sswitch_1
    invoke-static {v0, v3, p2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    goto :goto_0

    .line 234
    :sswitch_2
    invoke-static {v0, v3, p2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public useExternalTexture(IILjava/lang/String;)V
    .locals 1
    .parameter "textureUnit"
    .parameter "textureId"
    .parameter "handle"

    .prologue
    .line 178
    const v0, 0x84c0

    add-int/2addr v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 179
    const v0, 0x8d65

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 180
    invoke-virtual {p0, p3}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 182
    return-void
.end method

.method public useProgram()V
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lvisidon/Lib/utils/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 157
    return-void
.end method

.method public useTexture(IILjava/lang/String;)V
    .locals 1
    .parameter "textureUnit"
    .parameter "textureId"
    .parameter "handle"

    .prologue
    .line 170
    const v0, 0x84c0

    add-int/2addr v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 171
    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 172
    invoke-virtual {p0, p3}, Lvisidon/Lib/utils/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 174
    return-void
.end method
