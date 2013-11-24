.class abstract Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;
.super Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sBorderKey:Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sTextureId:[I

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;-><init>(Z)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .parameter "hasBorder"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    .line 52
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mContentValid:Z

    .line 55
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mIsUploading:Z

    .line 56
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mOpaque:Z

    .line 57
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mThrottled:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->setBorder(Z)V

    .line 72
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    .line 74
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 133
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 134
    .local v1, w:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 135
    .local v0, h:I
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->setSize(II)V

    .line 139
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "vertical"
    .parameter "config"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 118
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sBorderKey:Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    .line 119
    .local v1, key:Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->vertical:Z

    .line 120
    iput-object p1, v1, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 121
    iput p2, v1, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->length:I

    .line 122
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 123
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 124
    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    :goto_0
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->clone()Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    return-object v0

    .line 124
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sUploadedCount:I

    .line 201
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 204
    sget v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 213
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 214
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_5

    .line 216
    :try_start_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 217
    .local v23, bWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 220
    .local v22, bHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getTextureWidth()I

    move-result v5

    .line 221
    .local v5, texWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getTextureHeight()I

    move-result v6

    .line 223
    .local v6, texHeight:I
    move/from16 v0, v23

    if-gt v0, v5, :cond_1

    move/from16 v0, v22

    if-gt v0, v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 229
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    int-to-float v7, v7

    aput v7, v2, v3

    .line 230
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    add-int v7, v7, v22

    int-to-float v7, v7

    aput v7, v2, v3

    .line 231
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    move/from16 v0, v23

    int-to-float v7, v0

    aput v7, v2, v3

    .line 232
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    move/from16 v0, v22

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v2, v3

    .line 235
    const/4 v2, 0x1

    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glGenTextures(I[II)V

    .line 236
    const/16 v2, 0xde1

    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 237
    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v7, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sCropRect:[F

    const/4 v8, 0x0

    invoke-interface {v1, v2, v3, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 238
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 239
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 240
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 241
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 243
    move/from16 v0, v23

    if-ne v0, v5, :cond_2

    move/from16 v0, v22

    if-ne v0, v6, :cond_2

    .line 244
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v14, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->freeBitmap()V

    .line 279
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 280
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sTextureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mId:I

    .line 281
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mState:I

    .line 282
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mContentValid:Z

    .line 287
    return-void

    .line 223
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 246
    :cond_2
    :try_start_1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 247
    .local v4, format:I
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 248
    .local v9, type:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    .line 250
    .local v24, config:Landroid/graphics/Bitmap$Config;
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 251
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    if-lez v2, :cond_3

    .line 255
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 256
    .local v19, line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 259
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 260
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 264
    .end local v19           #line:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    add-int v2, v2, v23

    if-ge v2, v5, :cond_4

    .line 265
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 266
    .restart local v19       #line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    add-int v17, v2, v23

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 270
    .end local v19           #line:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    add-int v2, v2, v22

    if-ge v2, v6, :cond_0

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 272
    .restart local v19       #line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    add-int v18, v2, v22

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 275
    .end local v4           #format:I
    .end local v5           #texWidth:I
    .end local v6           #texHeight:I
    .end local v9           #type:I
    .end local v19           #line:Landroid/graphics/Bitmap;
    .end local v22           #bHeight:I
    .end local v23           #bWidth:I
    .end local v24           #config:Landroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception v2

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->freeBitmap()V

    .line 277
    throw v2

    .line 284
    :cond_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mState:I

    .line 285
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Texture load fail, no bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 159
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 152
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->freeBitmap()V

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mContentValid:Z

    .line 170
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mWidth:I

    .line 171
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mHeight:I

    .line 172
    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 292
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->recycle()V

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->freeBitmap()V

    .line 314
    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0
    .parameter "uploading"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mIsUploading:Z

    .line 78
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .parameter "isOpaque"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mOpaque:Z

    .line 302
    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0
    .parameter "throttled"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mThrottled:Z

    .line 115
    return-void
.end method

.method public updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v0, 0xde1

    .line 183
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->uploadToCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 190
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 191
    .local v5, format:I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 192
    .local v6, type:I
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 193
    const/4 v1, 0x0

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mBorder:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 194
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->freeBitmap()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
