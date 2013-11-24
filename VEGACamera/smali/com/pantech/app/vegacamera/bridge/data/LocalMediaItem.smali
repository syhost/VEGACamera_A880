.class public abstract Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
.source "LocalMediaItem.java"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 37
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->latitude:D

    .line 38
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->longitude:D

    .line 49
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 81
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;

    move-result-object v0

    .line 82
    .local v0, details:Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 85
    .local v1, formater:Ljava/text/DateFormat;
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 87
    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->latitude:D

    aput-wide v5, v3, v4

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 90
    :cond_0
    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 91
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 92
    :cond_1
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 63
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 64
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 65
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->mDataVersion:J

    .line 77
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
