.class public Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0

.field private static final TAG:Ljava/lang/String; = "BlobCache"


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .parameter "path"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "reset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .parameter "path"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "reset"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    .line 123
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mBlobHeader:[B

    .line 124
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 403
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mLookupRequest:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    .line 137
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 138
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 139
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 140
    iput p5, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mVersion:I

    .line 142
    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->resetCache(II)V

    .line 148
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->closeAll()V

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .parameter "hashStart"

    .prologue
    const/16 v5, 0x400

    .line 346
    new-array v2, v5, [B

    .line 347
    .local v2, zero:[B
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, count:I
    :goto_0
    if-gtz v0, :cond_0

    .line 353
    return-void

    .line 349
    :cond_0
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 350
    .local v1, todo:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 351
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 183
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 612
    if-nez p0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 615
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    .line 325
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    .line 327
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 329
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 330
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->updateIndexHeader()V

    .line 332
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->setActiveVariables()V

    .line 333
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->clearHash(I)V

    .line 334
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->syncIndex()V

    .line 335
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;)Z
    .locals 14
    .parameter "file"
    .parameter "offset"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mBlobHeader:[B

    .line 471
    .local v5, header:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    .line 473
    .local v7, oldPosition:J
    move/from16 v0, p2

    int-to-long v11, v0

    :try_start_0
    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 474
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_0

    .line 475
    const-string v11, "BlobCache"

    const-string v12, "cannot read blob header"

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 476
    const/4 v11, 0x0

    .line 512
    :goto_0
    return v11

    .line 478
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v5, v11}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readLong([BI)J

    move-result-wide v2

    .line 479
    .local v2, blobKey:J
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->key:J

    cmp-long v11, v2, v11

    if-eqz v11, :cond_1

    .line 480
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "blob key does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 481
    const/4 v11, 0x0

    goto :goto_0

    .line 483
    :cond_1
    const/16 v11, 0x8

    :try_start_2
    invoke-static {v5, v11}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 484
    .local v9, sum:I
    const/16 v11, 0xc

    invoke-static {v5, v11}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v4

    .line 485
    .local v4, blobOffset:I
    move/from16 v0, p2

    if-eq v4, v0, :cond_2

    .line 486
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "blob offset does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    const/4 v11, 0x0

    goto :goto_0

    .line 489
    :cond_2
    const/16 v11, 0x10

    :try_start_3
    invoke-static {v5, v11}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v6

    .line 490
    .local v6, length:I
    if-ltz v6, :cond_3

    iget v11, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    sub-int v11, v11, p2

    add-int/lit8 v11, v11, -0x14

    if-le v6, v11, :cond_4

    .line 491
    :cond_3
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "invalid blob length: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 492
    const/4 v11, 0x0

    goto :goto_0

    .line 494
    :cond_4
    :try_start_4
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    if-eqz v11, :cond_5

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    array-length v11, v11

    if-ge v11, v6, :cond_6

    .line 495
    :cond_5
    new-array v11, v6, [B

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    .line 498
    :cond_6
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    .line 499
    .local v1, blob:[B
    move-object/from16 v0, p3

    iput v6, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->length:I

    .line 501
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-eq v11, v6, :cond_7

    .line 502
    const-string v11, "BlobCache"

    const-string v12, "cannot read blob data"

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 503
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 505
    :cond_7
    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v11, v6}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->checkSum([BII)I

    move-result v11

    if-eq v11, v9, :cond_8

    .line 506
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "blob checksum does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 507
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 514
    :cond_8
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 509
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 510
    .end local v1           #blob:[B
    .end local v2           #blobKey:J
    .end local v4           #blobOffset:I
    .end local v6           #length:I
    .end local v9           #sum:I
    :catch_0
    move-exception v10

    .line 511
    .local v10, t:Ljava/lang/Throwable;
    :try_start_6
    const-string v11, "BlobCache"

    const-string v12, "getBlob failed."

    invoke-static {v11, v12, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 512
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 513
    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 514
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 515
    throw v11
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .parameter "key"
    .parameter "data"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 380
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mBlobHeader:[B

    .line 381
    .local v0, header:[B
    invoke-virtual {p0, p3}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->checkSum([B)I

    move-result v1

    .line 382
    .local v1, sum:I
    invoke-static {v0, v4, p1, p2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeLong([BIJ)V

    .line 383
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 384
    const/16 v2, 0xc

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 385
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 386
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 387
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 389
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 390
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 391
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    .line 392
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 393
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    .line 194
    .local v6, buf:[B
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 195
    const-string v0, "BlobCache"

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 275
    .end local v6           #buf:[B
    :goto_0
    return v0

    .line 199
    .restart local v6       #buf:[B
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    .line 200
    const-string v0, "BlobCache"

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 201
    goto :goto_0

    .line 204
    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    .line 205
    const-string v0, "BlobCache"

    const-string v1, "version mismatch"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 206
    goto :goto_0

    .line 209
    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    .line 210
    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    .line 211
    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    .line 212
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    .line 213
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    .line 215
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 216
    .local v9, sum:I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 217
    const-string v0, "BlobCache"

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 218
    goto :goto_0

    .line 222
    :cond_3
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 223
    const-string v0, "BlobCache"

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 224
    goto :goto_0

    .line 226
    :cond_4
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 227
    const-string v0, "BlobCache"

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 228
    goto :goto_0

    .line 230
    :cond_5
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_6

    .line 231
    const-string v0, "BlobCache"

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_6
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 235
    :cond_7
    const-string v0, "BlobCache"

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 236
    goto/16 :goto_0

    .line 238
    :cond_8
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 239
    :cond_9
    const-string v0, "BlobCache"

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 240
    goto/16 :goto_0

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 243
    const-string v0, "BlobCache"

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 244
    goto/16 :goto_0

    .line 248
    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 249
    .local v8, magic:[B
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 250
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 254
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 258
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 262
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 263
    goto/16 :goto_0

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 269
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 271
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 272
    goto/16 :goto_0

    .line 273
    .end local v6           #buf:[B
    .end local v8           #magic:[B
    .end local v9           #sum:I
    :catch_0
    move-exception v7

    .line 274
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "BlobCache"

    const-string v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v10

    .line 275
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 9
    .parameter "key"
    .parameter "hashStart"

    .prologue
    const/4 v6, 0x0

    .line 529
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    int-to-long v7, v7

    rem-long v7, p1, v7

    long-to-int v4, v7

    .line 530
    .local v4, slot:I
    if-gez v4, :cond_0

    .line 531
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    .line 532
    :cond_0
    move v5, v4

    .line 534
    .local v5, slotBegin:I
    :cond_1
    :goto_0
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    .line 535
    .local v3, offset:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 536
    .local v0, candidateKey:J
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 537
    .local v2, candidateOffset:I
    if-nez v2, :cond_2

    .line 538
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mSlotOffset:I

    .line 543
    :goto_1
    return v6

    .line 540
    :cond_2
    cmp-long v7, v0, p1

    if-nez v7, :cond_3

    .line 541
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mSlotOffset:I

    .line 542
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mFileOffset:I

    .line 543
    const/4 v6, 0x1

    goto :goto_1

    .line 545
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_4

    .line 546
    const/4 v4, 0x0

    .line 548
    :cond_4
    if-ne v4, v5, :cond_1

    .line 549
    const-string v7, "BlobCache"

    const-string v8, "corrupted index: clear the slot."

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 622
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 623
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 622
    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 7
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 627
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    .line 628
    .local v1, result:J
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 631
    return-wide v1

    .line 629
    :cond_0
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 628
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private resetCache(II)V
    .locals 9
    .parameter "maxEntries"
    .parameter "maxBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 296
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 297
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    .line 300
    .local v0, buf:[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 301
    invoke-static {v0, v7, p1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 302
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 303
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 304
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 305
    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 306
    const/16 v1, 0x18

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 307
    invoke-virtual {p0, v0, v4, v8}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 308
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 312
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 313
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 314
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 315
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 316
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 317
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 318
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 319
    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 280
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 281
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 282
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 285
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    .line 286
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mInactiveHashStart:I

    .line 288
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 289
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mInactiveHashStart:I

    .line 293
    :goto_2
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 291
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 342
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 639
    return-void

    .line 636
    :cond_0
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 637
    shr-int/lit8 p2, p2, 0x8

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static writeLong([BIJ)V
    .locals 5
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    .line 642
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 646
    return-void

    .line 643
    :cond_0
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 644
    shr-long/2addr p2, v4

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 601
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 602
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "nbytes"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 607
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 608
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->syncAll()V

    .line 175
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->closeAll()V

    .line 176
    return-void
.end method

.method getActiveCount()I
    .locals 7

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    if-lt v2, v4, :cond_0

    .line 591
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    if-ne v1, v4, :cond_2

    .line 595
    .end local v1           #count:I
    :goto_1
    return v1

    .line 585
    .restart local v1       #count:I
    :cond_0
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    mul-int/lit8 v5, v2, 0xc

    add-int v3, v4, v5

    .line 587
    .local v3, offset:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v5, v3, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v0

    .line 588
    .local v0, candidateOffset:I
    if-eqz v0, :cond_1

    .line 589
    add-int/lit8 v1, v1, 0x1

    .line 584
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v0           #candidateOffset:I
    .end local v3           #offset:I
    :cond_2
    const-string v4, "BlobCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wrong active count: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public insert(J[B)V
    .locals 3
    .parameter "key"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->flipRegion()V

    .line 365
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 368
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    .line 369
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 372
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->insertInternal(J[BI)V

    .line 373
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->updateIndexHeader()V

    .line 374
    return-void
.end method

.method public lookup(Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;)Z
    .locals 7
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 427
    iget-wide v3, p1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v2

    .line 436
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mSlotOffset:I

    .line 439
    .local v0, insertOffset:I
    iget-wide v3, p1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_0

    .line 447
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mSlotOffset:I

    .line 449
    :try_start_0
    iget-wide v3, p1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->key:J

    iget-object v5, p1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->insertInternal(J[BI)V

    .line 450
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    .line 451
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->writeInt([BII)V

    .line 452
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "BlobCache"

    const-string v4, "cannot copy over"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mLookupRequest:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->key:J

    .line 407
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mLookupRequest:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    .line 408
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mLookupRequest:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->lookup(Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mLookupRequest:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    .line 411
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->syncIndex()V

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    :goto_1
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 573
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 574
    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync index failed"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
