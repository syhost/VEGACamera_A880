.class public Lcom/pantech/app/vegacamera/beautification/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExifData([B[B)[B
    .locals 7
    .parameter "srcJPEG"
    .parameter "dstJPEG"

    .prologue
    const/4 v3, 0x0

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v3

    .line 59
    :cond_1
    const-string v4, "CameraExif"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "srcJPEG length "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstJPEG length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p0}, Lcom/pantech/app/vegacamera/beautification/Exif;->saveExifData([B)[B

    move-result-object v1

    .line 63
    .local v1, exif:[B
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Lcom/pantech/app/vegacamera/beautification/Exif;->removeThumbnail([B)I

    .line 68
    array-length v3, p1

    array-length v4, v1

    add-int v2, v3, v4

    .line 70
    .local v2, length:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    const/16 v3, -0x28

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 77
    const/4 v3, 0x2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_0
.end method

.method private static combineData([B[B[B)[B
    .locals 6
    .parameter "exif"
    .parameter "jfif"
    .parameter "stream"

    .prologue
    const/4 v5, 0x0

    .line 85
    array-length v2, p2

    add-int/lit8 v1, v2, 0x2

    .line 87
    .local v1, length:I
    if-eqz p1, :cond_0

    .line 88
    array-length v2, p1

    add-int/2addr v1, v2

    .line 90
    :cond_0
    if-eqz p0, :cond_1

    .line 91
    array-length v2, p0

    add-int/2addr v1, v2

    .line 93
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    const/16 v2, -0x28

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    if-eqz p1, :cond_2

    .line 99
    array-length v2, p1

    invoke-virtual {v0, p1, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 100
    const-string v2, "CameraExif"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jfif length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    if-eqz p0, :cond_3

    .line 104
    array-length v2, p0

    invoke-virtual {v0, p0, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 105
    const-string v2, "CameraExif"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exif length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    const-string v2, "CameraExif"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stream length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    array-length v2, p2

    invoke-virtual {v0, p2, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static getOrientation([B)I
    .locals 13
    .parameter "jpeg"

    .prologue
    .line 356
    if-nez p0, :cond_0

    .line 357
    const/4 v10, 0x0

    .line 460
    :goto_0
    return v10

    .line 360
    :cond_0
    const/4 v6, 0x0

    .line 361
    .local v6, offset:I
    const/4 v3, 0x0

    .line 364
    .local v3, length:I
    :cond_1
    :goto_1
    add-int/lit8 v10, v6, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_2

    add-int/lit8 v7, v6, 0x1

    .end local v6           #offset:I
    .local v7, offset:I
    aget-byte v10, p0, v6

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-eq v10, v11, :cond_3

    move v6, v7

    .line 414
    .end local v7           #offset:I
    .restart local v6       #offset:I
    :cond_2
    :goto_2
    const/16 v10, 0x8

    if-le v3, v10, :cond_e

    .line 416
    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {p0, v6, v10, v11}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v9

    .line 417
    .local v9, tag:I
    const v10, 0x49492a00

    if-eq v9, v10, :cond_a

    const v10, 0x4d4d002a

    if-eq v9, v10, :cond_a

    .line 418
    const-string v10, "CameraExif"

    const-string v11, "Invalid byte order"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v10, 0x0

    goto :goto_0

    .line 365
    .end local v6           #offset:I
    .end local v9           #tag:I
    .restart local v7       #offset:I
    :cond_3
    aget-byte v10, p0, v7

    and-int/lit16 v5, v10, 0xff

    .line 368
    .local v5, marker:I
    const/16 v10, 0xff

    if-ne v5, v10, :cond_4

    move v6, v7

    .line 369
    .end local v7           #offset:I
    .restart local v6       #offset:I
    goto :goto_1

    .line 371
    .end local v6           #offset:I
    .restart local v7       #offset:I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .line 374
    .end local v7           #offset:I
    .restart local v6       #offset:I
    const/16 v10, 0xd8

    if-eq v5, v10, :cond_1

    const/4 v10, 0x1

    if-eq v5, v10, :cond_1

    .line 378
    const/16 v10, 0xd9

    if-eq v5, v10, :cond_2

    const/16 v10, 0xda

    if-eq v5, v10, :cond_2

    .line 383
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {p0, v6, v10, v11}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v3

    .line 384
    const/4 v10, 0x2

    if-lt v3, v10, :cond_5

    add-int v10, v6, v3

    array-length v11, p0

    if-le v10, v11, :cond_6

    .line 385
    :cond_5
    const-string v10, "CameraExif"

    const-string v11, "Invalid length"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v10, 0x0

    goto :goto_0

    .line 389
    :cond_6
    const/16 v10, 0xe0

    if-ne v5, v10, :cond_7

    .line 390
    const-string v10, "CameraExif"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "JFIF section found. length "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-lt v2, v3, :cond_8

    .line 398
    .end local v2           #i:I
    :cond_7
    const/16 v10, 0xe1

    if-ne v5, v10, :cond_9

    const/16 v10, 0x8

    if-lt v3, v10, :cond_9

    add-int/lit8 v10, v6, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_9

    .line 399
    add-int/lit8 v10, v6, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_9

    .line 401
    const-string v10, "CameraExif"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "EXIF section found. length "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    add-int/lit8 v6, v6, 0x8

    .line 404
    add-int/lit8 v3, v3, -0x8

    .line 405
    goto/16 :goto_2

    .line 393
    .restart local v2       #i:I
    :cond_8
    const-string v10, "CameraExif"

    new-instance v11, Ljava/lang/StringBuilder;

    add-int v12, v6, v2

    aget-byte v12, p0, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 409
    .end local v2           #i:I
    :cond_9
    add-int/2addr v6, v3

    .line 410
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 421
    .end local v5           #marker:I
    .restart local v9       #tag:I
    :cond_a
    const v10, 0x49492a00

    if-ne v9, v10, :cond_c

    const/4 v4, 0x1

    .line 424
    .local v4, littleEndian:Z
    :goto_4
    add-int/lit8 v10, v6, 0x4

    const/4 v11, 0x4

    invoke-static {p0, v10, v11, v4}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 425
    .local v0, count:I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_b

    if-le v0, v3, :cond_d

    .line 426
    :cond_b
    const-string v10, "CameraExif"

    const-string v11, "Invalid offset"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 421
    .end local v0           #count:I
    .end local v4           #littleEndian:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 429
    .restart local v0       #count:I
    .restart local v4       #littleEndian:Z
    :cond_d
    add-int/2addr v6, v0

    .line 430
    sub-int/2addr v3, v0

    .line 433
    add-int/lit8 v10, v6, -0x2

    const/4 v11, 0x2

    invoke-static {p0, v10, v11, v4}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 434
    .end local v0           #count:I
    .local v1, count:I
    :goto_5
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    if-lez v1, :cond_e

    const/16 v10, 0xc

    if-ge v3, v10, :cond_f

    .line 459
    .end local v0           #count:I
    .end local v4           #littleEndian:Z
    .end local v9           #tag:I
    :cond_e
    const-string v10, "CameraExif"

    const-string v11, "Orientation not found"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 436
    .restart local v0       #count:I
    .restart local v4       #littleEndian:Z
    .restart local v9       #tag:I
    :cond_f
    const/4 v10, 0x2

    invoke-static {p0, v6, v10, v4}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v9

    .line 437
    const/16 v10, 0x112

    if-ne v9, v10, :cond_10

    .line 439
    add-int/lit8 v10, v6, 0x8

    const/4 v11, 0x2

    invoke-static {p0, v10, v11, v4}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v8

    .line 440
    .local v8, orientation:I
    packed-switch v8, :pswitch_data_0

    .line 450
    :pswitch_0
    const-string v10, "CameraExif"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unsupported orientation: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 442
    :pswitch_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 444
    :pswitch_2
    const/16 v10, 0xb4

    goto/16 :goto_0

    .line 446
    :pswitch_3
    const/16 v10, 0x5a

    goto/16 :goto_0

    .line 448
    :pswitch_4
    const/16 v10, 0x10e

    goto/16 :goto_0

    .line 453
    .end local v8           #orientation:I
    :cond_10
    add-int/lit8 v6, v6, 0xc

    .line 454
    add-int/lit8 v3, v3, -0xc

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_5

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 464
    const/4 v1, 0x1

    .line 465
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 466
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 467
    const/4 v1, -0x1

    .line 470
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 471
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-gtz v0, :cond_1

    .line 475
    return v2

    .line 472
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 473
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0
.end method

.method private static removeThumbnail([B)I
    .locals 12
    .parameter "jpeg"

    .prologue
    const v11, 0x49492a00

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 292
    if-nez p0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v6

    .line 296
    :cond_1
    array-length v2, p0

    .line 297
    .local v2, length:I
    const/16 v4, 0xa

    .line 300
    .local v4, offset:I
    if-le v2, v9, :cond_0

    .line 303
    invoke-static {p0, v4, v8, v6}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v5

    .line 304
    .local v5, tag:I
    if-eq v5, v11, :cond_2

    const v7, 0x4d4d002a

    if-eq v5, v7, :cond_2

    .line 305
    const-string v7, "CameraExif"

    const-string v8, "Invalid byte order"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_2
    if-ne v5, v11, :cond_4

    const/4 v3, 0x1

    .line 311
    .local v3, littleEndian:Z
    :goto_1
    const/16 v7, 0xe

    invoke-static {p0, v7, v8, v3}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v7

    add-int/lit8 v0, v7, 0x2

    .line 312
    .local v0, count:I
    if-lt v0, v9, :cond_3

    if-le v0, v2, :cond_5

    .line 313
    :cond_3
    const-string v7, "CameraExif"

    const-string v8, "Invalid offset"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #count:I
    .end local v3           #littleEndian:Z
    :cond_4
    move v3, v6

    .line 308
    goto :goto_1

    .line 316
    .restart local v0       #count:I
    .restart local v3       #littleEndian:Z
    :cond_5
    add-int/2addr v4, v0

    .line 317
    sub-int/2addr v2, v0

    .line 320
    add-int/lit8 v7, v4, -0x2

    invoke-static {p0, v7, v10, v3}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 321
    .end local v0           #count:I
    .local v1, count:I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    if-lez v1, :cond_6

    const/16 v7, 0xc

    if-ge v2, v7, :cond_7

    .line 329
    :cond_6
    aput-byte v6, p0, v4

    .line 330
    add-int/lit8 v7, v4, 0x1

    aput-byte v6, p0, v7

    .line 331
    add-int/lit8 v7, v4, 0x2

    aput-byte v6, p0, v7

    .line 332
    add-int/lit8 v7, v4, 0x3

    aput-byte v6, p0, v7

    goto :goto_0

    .line 323
    :cond_7
    invoke-static {p0, v4, v10, v3}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v5

    .line 324
    const-string v7, "CameraExif"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tag found: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    add-int/lit8 v4, v4, 0xc

    .line 326
    add-int/lit8 v2, v2, -0xc

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_2
.end method

.method private static saveExifData([B)[B
    .locals 11
    .parameter "jpeg"

    .prologue
    const/16 v10, 0xff

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 236
    if-nez p0, :cond_0

    .line 288
    :goto_0
    return-object v5

    .line 240
    :cond_0
    const/4 v3, 0x0

    .line 241
    .local v3, offset:I
    const/4 v1, 0x0

    .line 244
    .local v1, length:I
    :cond_1
    :goto_1
    add-int/lit8 v6, v3, 0x3

    array-length v7, p0

    if-ge v6, v7, :cond_2

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v10, :cond_3

    move v3, v4

    .line 280
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_2
    if-nez v1, :cond_8

    .line 281
    const-string v6, "CameraExif"

    const-string v7, "No Exif data found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_3
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 248
    .local v2, marker:I
    if-ne v2, v10, :cond_4

    move v3, v4

    .line 249
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 251
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .line 254
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 258
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_2

    const/16 v6, 0xda

    if-eq v2, v6, :cond_2

    .line 263
    invoke-static {p0, v3, v9, v8}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v1

    .line 264
    if-lt v1, v9, :cond_5

    add-int v6, v3, v1

    array-length v7, p0

    if-le v6, v7, :cond_6

    .line 265
    :cond_5
    const-string v6, "CameraExif"

    const-string v7, "Invalid length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_6
    const/16 v6, 0xe1

    if-ne v2, v6, :cond_7

    const/16 v6, 0x8

    if-lt v1, v6, :cond_7

    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x4

    invoke-static {p0, v6, v7, v8}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v6

    const v7, 0x45786966

    if-ne v6, v7, :cond_7

    .line 271
    add-int/lit8 v6, v3, 0x6

    invoke-static {p0, v6, v9, v8}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    :cond_7
    add-int/2addr v3, v1

    .line 277
    const/4 v1, 0x0

    goto :goto_1

    .line 285
    .end local v2           #marker:I
    :cond_8
    add-int/lit8 v5, v1, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_0
.end method

.method private static saveJfifData([B)[B
    .locals 10
    .parameter "jpeg"

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 179
    if-nez p0, :cond_0

    .line 230
    :goto_0
    return-object v5

    .line 183
    :cond_0
    const/4 v3, 0x0

    .line 184
    .local v3, offset:I
    const/4 v1, 0x0

    .line 187
    .local v1, length:I
    :cond_1
    :goto_1
    add-int/lit8 v6, v3, 0x3

    array-length v7, p0

    if-ge v6, v7, :cond_2

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v9, :cond_3

    move v3, v4

    .line 222
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_2
    if-nez v1, :cond_7

    .line 223
    const-string v6, "CameraExif"

    const-string v7, "No Jfif data found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_3
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 191
    .local v2, marker:I
    if-ne v2, v9, :cond_4

    move v3, v4

    .line 192
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 194
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .line 197
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 201
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_2

    const/16 v6, 0xda

    if-eq v2, v6, :cond_2

    .line 206
    const/4 v6, 0x0

    invoke-static {p0, v3, v8, v6}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v1

    .line 207
    if-lt v1, v8, :cond_5

    add-int v6, v3, v1

    array-length v7, p0

    if-le v6, v7, :cond_6

    .line 208
    :cond_5
    const-string v6, "CameraExif"

    const-string v7, "Invalid length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_6
    const/16 v6, 0xe0

    if-eq v2, v6, :cond_2

    .line 218
    add-int/2addr v3, v1

    .line 219
    const/4 v1, 0x0

    goto :goto_1

    .line 227
    .end local v2           #marker:I
    :cond_7
    add-int/lit8 v5, v1, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_0
.end method

.method private static saveStreamData([B)[B
    .locals 12
    .parameter "jpeg"

    .prologue
    const/16 v11, 0xff

    const/16 v10, 0xda

    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 118
    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v5

    .line 122
    :cond_1
    const/4 v3, 0x0

    .line 123
    .local v3, offset:I
    const/4 v1, 0x0

    .line 124
    .local v1, length:I
    const/4 v2, 0x0

    .line 127
    .local v2, marker:I
    :cond_2
    :goto_1
    add-int/lit8 v6, v3, 0x3

    array-length v7, p0

    if-ge v6, v7, :cond_3

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v11, :cond_4

    move v3, v4

    .line 165
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_3
    if-eq v2, v10, :cond_8

    .line 166
    const-string v6, "CameraExif"

    const-string v7, "No stream data found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 131
    if-ne v2, v11, :cond_5

    move v3, v4

    .line 132
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 135
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_5
    const-string v6, "CameraExif"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "marker found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v3, v4, 0x1

    .line 140
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 145
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_0

    .line 149
    if-eq v2, v10, :cond_3

    .line 154
    const/4 v6, 0x0

    invoke-static {p0, v3, v9, v6}, Lcom/pantech/app/vegacamera/beautification/Exif;->pack([BIIZ)I

    move-result v1

    .line 155
    if-lt v1, v9, :cond_6

    add-int v6, v3, v1

    array-length v7, p0

    if-le v6, v7, :cond_7

    .line 156
    :cond_6
    const-string v6, "CameraExif"

    const-string v7, "Invalid length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_7
    add-int/2addr v3, v1

    .line 162
    const/4 v1, 0x0

    goto :goto_1

    .line 170
    :cond_8
    array-length v5, p0

    add-int/lit8 v6, v3, -0x2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    array-length v6, p0

    add-int/lit8 v7, v3, -0x2

    sub-int/2addr v6, v7

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_0
.end method

.method public static transferExifData([B[B)[B
    .locals 7
    .parameter "srcJPEG"
    .parameter "dstJPEG"

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    const-string v4, "CameraExif"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "srcJPEG length "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstJPEG length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0}, Lcom/pantech/app/vegacamera/beautification/Exif;->saveExifData([B)[B

    move-result-object v1

    .line 36
    .local v1, exif:[B
    if-eqz v1, :cond_0

    .line 39
    invoke-static {p1}, Lcom/pantech/app/vegacamera/beautification/Exif;->saveJfifData([B)[B

    move-result-object v2

    .line 41
    .local v2, jfif:[B
    invoke-static {p1}, Lcom/pantech/app/vegacamera/beautification/Exif;->saveStreamData([B)[B

    move-result-object v3

    .line 43
    .local v3, stream:[B
    if-eqz v3, :cond_0

    .line 46
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/beautification/Exif;->combineData([B[B[B)[B

    move-result-object v0

    .line 48
    .local v0, buffer:[B
    const-string v4, "CameraExif"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "combined length "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
