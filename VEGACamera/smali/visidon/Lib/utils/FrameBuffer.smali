.class public final Lvisidon/Lib/utils/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field public static final FRAMEBUFFER_TYPE_OFFSCREEN:I = 0x0

.field public static final FRAMEBUFFER_TYPE_OFFSCREEN_TEXTURE_EXT:I = 0x1

.field public static final FRAMEBUFFER_TYPE_SCREEN:I = 0x2


# instance fields
.field private mFrameBufferHandle:I

.field private mHeight:I

.field private mTextureHandles:[I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    .line 51
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "frameBufferType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    .line 12
    new-array v0, v1, [I

    iput-object v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    .line 26
    packed-switch p3, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p0, p1, p2, v2, v1}, Lvisidon/Lib/utils/FrameBuffer;->init(IIIZ)V

    .line 30
    invoke-virtual {p0, v1}, Lvisidon/Lib/utils/FrameBuffer;->bindTexture(I)V

    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {p0, p1, p2, v2, v2}, Lvisidon/Lib/utils/FrameBuffer;->init(IIIZ)V

    .line 34
    invoke-virtual {p0, v1}, Lvisidon/Lib/utils/FrameBuffer;->bindTexture(I)V

    goto :goto_0

    .line 37
    :pswitch_2
    iput v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    .line 38
    iput p1, p0, Lvisidon/Lib/utils/FrameBuffer;->mWidth:I

    .line 39
    iput p2, p0, Lvisidon/Lib/utils/FrameBuffer;->mHeight:I

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const v0, 0x8d40

    iget v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 58
    iget v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mWidth:I

    iget v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 59
    return-void
.end method

.method public bindTexture(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 70
    const v0, 0x8d40

    .line 71
    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 72
    iget-object v3, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    aget v3, v3, p1

    const/4 v4, 0x0

    .line 70
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 73
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mHeight:I

    return v0
.end method

.method public getTexture(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    iget-object v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 94
    iget-object v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    aget v0, v0, p1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lvisidon/Lib/utils/FrameBuffer;->mWidth:I

    return v0
.end method

.method public init(IIIZ)V
    .locals 17
    .parameter "width"
    .parameter "height"
    .parameter "textureCount"
    .parameter "textureExternalOES"

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lvisidon/Lib/utils/FrameBuffer;->reset()V

    .line 131
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lvisidon/Lib/utils/FrameBuffer;->mWidth:I

    .line 132
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lvisidon/Lib/utils/FrameBuffer;->mHeight:I

    .line 135
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 136
    .local v11, handle:[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 137
    const/4 v2, 0x0

    aget v2, v11, v2

    move-object/from16 v0, p0

    iput v2, v0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    .line 140
    const v2, 0x8d40

    move-object/from16 v0, p0

    iget v3, v0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 143
    move/from16 v0, p3

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 145
    if-eqz p4, :cond_0

    const v12, 0x8d65

    .line 148
    .local v12, target:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    move/from16 v0, v16

    if-lt v14, v0, :cond_1

    .line 164
    return-void

    .line 146
    .end local v12           #target:I
    :cond_0
    const/16 v12, 0xde1

    goto :goto_0

    .line 148
    .restart local v12       #target:I
    :cond_1
    aget v13, v15, v14

    .line 149
    .local v13, texture:I
    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 150
    const/16 v2, 0xde1

    .line 151
    const/16 v3, 0x2802

    const v4, 0x812f

    .line 150
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 152
    const/16 v2, 0x2803

    .line 153
    const v3, 0x812f

    .line 152
    invoke-static {v12, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 155
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v12, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 156
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v12, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 158
    const/16 v2, 0xde1

    if-ne v12, v2, :cond_2

    .line 159
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    .line 160
    move-object/from16 v0, p0

    iget v5, v0, Lvisidon/Lib/utils/FrameBuffer;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lvisidon/Lib/utils/FrameBuffer;->mHeight:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    .line 161
    const/16 v9, 0x1401

    const/4 v10, 0x0

    .line 159
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 148
    :cond_2
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    new-array v0, v2, [I

    iget v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    aput v1, v0, v3

    .line 172
    .local v0, handle:[I
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 173
    iget-object v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    array-length v1, v1

    iget-object v2, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 174
    const/4 v1, -0x1

    iput v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mFrameBufferHandle:I

    .line 175
    new-array v1, v3, [I

    iput-object v1, p0, Lvisidon/Lib/utils/FrameBuffer;->mTextureHandles:[I

    .line 176
    return-void
.end method
