.class public abstract Lvisidon/Lib/utils/FilterGroup;
.super Ljava/lang/Object;
.source "FilterGroup.java"


# instance fields
.field private fbosInitialized:Z

.field private inputTextureIds:[I

.field private outputTextureIds:[I

.field private passedTime:J

.field private shadersInitialized:Z

.field private time:J


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "inputTextureCount"
    .parameter "outputTextureCount"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lvisidon/Lib/utils/FilterGroup;->shadersInitialized:Z

    .line 17
    iput-boolean v0, p0, Lvisidon/Lib/utils/FilterGroup;->fbosInitialized:Z

    .line 25
    new-array v0, p1, [I

    iput-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->inputTextureIds:[I

    .line 26
    new-array v0, p2, [I

    iput-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->outputTextureIds:[I

    .line 28
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 1
    .parameter "inputTextureCount"
    .parameter "outputTextureCount"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lvisidon/Lib/utils/FilterGroup;->shadersInitialized:Z

    .line 17
    iput-boolean v0, p0, Lvisidon/Lib/utils/FilterGroup;->fbosInitialized:Z

    .line 32
    new-array v0, p1, [I

    iput-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->inputTextureIds:[I

    .line 33
    new-array v0, p2, [I

    iput-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->outputTextureIds:[I

    .line 35
    invoke-virtual {p0, p3}, Lvisidon/Lib/utils/FilterGroup;->initializeShaders(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected checkError(Ljava/lang/String;)V
    .locals 4
    .parameter "task"

    .prologue
    .line 71
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 73
    .local v0, error:I
    const-string v1, "FilterGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GL_ERROR "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public checkFBOStatus()V
    .locals 4

    .prologue
    .line 79
    const v1, 0x8d40

    invoke-static {v1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 81
    .local v0, status:I
    const-string v1, "FilterGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GL_FRAMEBUFFER status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method protected clearScreen()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 87
    const/high16 v0, 0x3f80

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 88
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 90
    return-void
.end method

.method public endMeasuring()V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lvisidon/Lib/utils/FilterGroup;->time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lvisidon/Lib/utils/FilterGroup;->passedTime:J

    .line 63
    return-void
.end method

.method public endMeasuring(Ljava/lang/String;)V
    .locals 4
    .parameter "task"

    .prologue
    .line 49
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lvisidon/Lib/utils/FilterGroup;->time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lvisidon/Lib/utils/FilterGroup;->passedTime:J

    .line 53
    const-string v0, "FilterGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time spent in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lvisidon/Lib/utils/FilterGroup;->passedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public getInputTextureId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 145
    iget-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->inputTextureIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getOutputTextureId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 153
    iget-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->outputTextureIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lvisidon/Lib/utils/FilterGroup;->passedTime:J

    return-wide v0
.end method

.method public abstract initializeFrameBuffers(III)V
.end method

.method public abstract initializeShaders(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected isFbosInitialized()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lvisidon/Lib/utils/FilterGroup;->fbosInitialized:Z

    return v0
.end method

.method protected isShadersInitialized()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lvisidon/Lib/utils/FilterGroup;->shadersInitialized:Z

    return v0
.end method

.method protected loadTexture(IIIILjava/nio/Buffer;)I
    .locals 10
    .parameter "internalFormat"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "pixels"

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 120
    .local v9, textures:[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 121
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v9, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
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

    .line 125
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/high16 v2, 0x4618

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 126
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/high16 v2, 0x4618

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 127
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 128
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 130
    const/4 v0, 0x0

    aget v0, v9, v0

    return v0
.end method

.method public abstract render()V
.end method

.method protected setFbosInitialized(Z)V
    .locals 0
    .parameter "fbosInitialized"

    .prologue
    .line 169
    iput-boolean p1, p0, Lvisidon/Lib/utils/FilterGroup;->fbosInitialized:Z

    .line 170
    return-void
.end method

.method public setInputTextureId(II)V
    .locals 1
    .parameter "textureId"
    .parameter "index"

    .prologue
    .line 141
    iget-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->inputTextureIds:[I

    aput p1, v0, p2

    .line 142
    return-void
.end method

.method public setOutputTextureId(II)V
    .locals 1
    .parameter "textureId"
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Lvisidon/Lib/utils/FilterGroup;->outputTextureIds:[I

    aput p1, v0, p2

    .line 150
    return-void
.end method

.method protected setShadersInitialized(Z)V
    .locals 0
    .parameter "shadersInitialized"

    .prologue
    .line 161
    iput-boolean p1, p0, Lvisidon/Lib/utils/FilterGroup;->shadersInitialized:Z

    .line 162
    return-void
.end method

.method public startMeasuring()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvisidon/Lib/utils/FilterGroup;->time:J

    .line 45
    return-void
.end method
