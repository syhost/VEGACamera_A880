.class Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketId:I

    .line 306
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    .line 307
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 316
    instance-of v2, p1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 318
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    .line 319
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketId:I

    return v0
.end method
