.class Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;
.super Ljava/lang/Object;
.source "UploadedTexture.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderKey"
.end annotation


# instance fields
.field public config:Landroid/graphics/Bitmap$Config;

.field public length:I

.field public vertical:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;
    .locals 2

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->clone()Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;

    .line 100
    .local v0, o:Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->vertical:Z

    iget-boolean v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->vertical:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->length:I

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->length:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->length:I

    xor-int v0, v1, v2

    .line 92
    .local v0, x:I
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture$BorderKey;->vertical:Z

    if-eqz v1, :cond_0

    .end local v0           #x:I
    :goto_0
    return v0

    .restart local v0       #x:I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method
