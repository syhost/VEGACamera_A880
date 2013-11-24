.class abstract Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mCanvasRef:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mWidth:I

    .line 42
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mHeight:I

    .line 49
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mCanvasRef:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    .line 54
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 55
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mId:I

    .line 56
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mState:I

    .line 57
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v1

    .line 60
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _finalize()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->recycle()V

    .line 173
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method private freeResource()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mCanvasRef:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    .line 163
    .local v0, canvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->unloadTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    .line 166
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mState:I

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 168
    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .prologue
    .line 203
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 204
    :try_start_0
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, t:Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    monitor-exit v2

    .line 209
    return-void

    .line 204
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;

    .line 205
    .restart local v0       #t:Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
    const/4 v3, 0x0

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mState:I

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static yieldAllTextures()V
    .locals 4

    .prologue
    .line 195
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 196
    :try_start_0
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, t:Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    monitor-exit v2

    .line 200
    return-void

    .line 196
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;

    .line 197
    .restart local v0       #t:Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->yield()V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V

    .line 128
    return-void
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 132
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V

    .line 133
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 185
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 183
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 184
    throw v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->freeResource()V

    .line 150
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mCanvasRef:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    .line 68
    return-void
.end method

.method protected setBorder(Z)V
    .locals 0
    .parameter "hasBorder"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mHasBorder:Z

    .line 123
    return-void
.end method

.method protected setSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x1000

    .line 73
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mWidth:I

    .line 74
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mHeight:I

    .line 75
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureWidth:I

    .line 76
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureHeight:I

    .line 77
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureHeight:I

    if-le v0, v1, :cond_1

    .line 78
    :cond_0
    const-string v0, "BasicTexture"

    const-string v1, "texture is too large: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mTextureHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_1
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->freeResource()V

    .line 159
    return-void
.end method
