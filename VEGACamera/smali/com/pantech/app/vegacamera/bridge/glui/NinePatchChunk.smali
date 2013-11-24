.class Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchChunk.java"


# static fields
.field public static final NO_COLOR:I = 0x1

.field public static final TRANSPARENT_COLOR:I


# instance fields
.field public mColor:[I

.field public mDivX:[I

.field public mDivY:[I

.field public mPaddings:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    .line 26
    return-void
.end method

.method private static checkDivCount(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 43
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid nine-patch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    return-void
.end method

.method public static deserialize([B)Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;
    .locals 5
    .parameter "data"

    .prologue
    .line 49
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 52
    .local v2, wasSerialized:B
    if-nez v2, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 55
    :cond_0
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    invoke-direct {v1}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;-><init>()V

    .line 56
    .local v1, chunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mDivX:[I

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mDivY:[I

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mColor:[I

    .line 60
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mDivX:[I

    array-length v3, v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->checkDivCount(I)V

    .line 61
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mDivY:[I

    array-length v3, v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->checkDivCount(I)V

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 67
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 68
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 69
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 70
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 75
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mDivX:[I

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 76
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mDivY:[I

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 77
    iget-object v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mColor:[I

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static readIntArray([ILjava/nio/ByteBuffer;)V
    .locals 3
    .parameter "data"
    .parameter "buffer"

    .prologue
    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 40
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
