.class public Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public dateTaken:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->bucketId:I

    .line 208
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    .line 209
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 218
    instance-of v2, p1, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 220
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    .line 221
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->bucketId:I

    return v0
.end method
