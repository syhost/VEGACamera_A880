.class public Lvisidon/Lib/enhancementutils/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExifData([B[B)[B
    .locals 6
    .parameter "srcJPEG"
    .parameter "dstJPEG"

    .prologue
    .line 65
    const-string v3, "CameraExif"

    const-string v4, "adding exif data"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 68
    :cond_0
    const-string v3, "CameraExif"

    const-string v4, "Exif error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 p1, 0x0

    .line 93
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 72
    .restart local p1
    :cond_2
    const-string v3, "CameraExif"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "srcJPEG length "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstJPEG length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0}, Lvisidon/Lib/enhancementutils/Exif;->saveExifData([B)[B

    move-result-object v1

    .line 76
    .local v1, exif:[B
    if-eqz v1, :cond_1

    .line 80
    invoke-static {v1}, Lvisidon/Lib/enhancementutils/Exif;->removeThumbnail([B)I

    .line 82
    array-length v3, p1

    array-length v4, v1

    add-int v2, v3, v4

    .line 84
    .local v2, length:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 87
    const/16 v3, -0x28

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 91
    const/4 v3, 0x2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_0
.end method

.method private static combineData([B[B[B)[B
    .locals 6
    .parameter "exif"
    .parameter "jfif"
    .parameter "stream"

    .prologue
    const/4 v5, 0x0

    .line 100
    array-length v2, p2

    add-int/lit8 v1, v2, 0x2

    .line 102
    .local v1, length:I
    if-eqz p1, :cond_0

    .line 103
    array-length v2, p1

    add-int/2addr v1, v2

    .line 105
    :cond_0
    if-eqz p0, :cond_1

    .line 106
    array-length v2, p0

    add-int/2addr v1, v2

    .line 108
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    const/16 v2, -0x28

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 113
    if-eqz p1, :cond_2

    .line 114
    array-length v2, p1

    invoke-virtual {v0, p1, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 115
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

    .line 118
    :cond_2
    if-eqz p0, :cond_3

    .line 119
    array-length v2, p0

    invoke-virtual {v0, p0, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 120
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

    .line 123
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

    .line 125
    array-length v2, p2

    invoke-virtual {v0, p2, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static getOrientation([B)I
    .locals 13
    .parameter "jpeg"

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v10, 0x0

    .line 488
    :goto_0
    return v10

    .line 386
    :cond_0
    const/4 v6, 0x0

    .line 387
    .local v6, offset:I
    const/4 v3, 0x0

    .line 390
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

    .line 441
    .end local v7           #offset:I
    .restart local v6       #offset:I
    :cond_2
    :goto_2
    const/16 v10, 0x8

    if-le v3, v10, :cond_e

    .line 443
    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {p0, v6, v10, v11}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v9

    .line 444
    .local v9, tag:I
    const v10, 0x49492a00

    if-eq v9, v10, :cond_a

    const v10, 0x4d4d002a

    if-eq v9, v10, :cond_a

    .line 445
    const-string v10, "CameraExif"

    const-string v11, "Invalid byte order"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v10, 0x0

    goto :goto_0

    .line 391
    .end local v6           #offset:I
    .end local v9           #tag:I
    .restart local v7       #offset:I
    :cond_3
    aget-byte v10, p0, v7

    and-int/lit16 v5, v10, 0xff

    .line 394
    .local v5, marker:I
    const/16 v10, 0xff

    if-ne v5, v10, :cond_4

    move v6, v7

    .line 395
    .end local v7           #offset:I
    .restart local v6       #offset:I
    goto :goto_1

    .line 397
    .end local v6           #offset:I
    .restart local v7       #offset:I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .line 400
    .end local v7           #offset:I
    .restart local v6       #offset:I
    const/16 v10, 0xd8

    if-eq v5, v10, :cond_1

    const/4 v10, 0x1

    if-eq v5, v10, :cond_1

    .line 404
    const/16 v10, 0xd9

    if-eq v5, v10, :cond_2

    const/16 v10, 0xda

    if-eq v5, v10, :cond_2

    .line 409
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {p0, v6, v10, v11}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v3

    .line 410
    const/4 v10, 0x2

    if-lt v3, v10, :cond_5

    add-int v10, v6, v3

    array-length v11, p0

    if-le v10, v11, :cond_6

    .line 411
    :cond_5
    const-string v10, "CameraExif"

    const-string v11, "Invalid length"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v10, 0x0

    goto :goto_0

    .line 415
    :cond_6
    const/16 v10, 0xe0

    if-ne v5, v10, :cond_7

    .line 416
    const-string v10, "CameraExif"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "JFIF section found. length "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-lt v2, v3, :cond_8

    .line 424
    .end local v2           #i:I
    :cond_7
    const/16 v10, 0xe1

    if-ne v5, v10, :cond_9

    const/16 v10, 0x8

    if-lt v3, v10, :cond_9

    .line 425
    add-int/lit8 v10, v6, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_9

    .line 426
    add-int/lit8 v10, v6, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_9

    .line 428
    const-string v10, "CameraExif"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "EXIF section found. length "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    add-int/lit8 v6, v6, 0x8

    .line 431
    add-int/lit8 v3, v3, -0x8

    .line 432
    goto/16 :goto_2

    .line 419
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

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 436
    .end local v2           #i:I
    :cond_9
    add-int/2addr v6, v3

    .line 437
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 448
    .end local v5           #marker:I
    .restart local v9       #tag:I
    :cond_a
    const v10, 0x49492a00

    if-ne v9, v10, :cond_c

    const/4 v4, 0x1

    .line 451
    .local v4, littleEndian:Z
    :goto_4
    add-int/lit8 v10, v6, 0x4

    const/4 v11, 0x4

    invoke-static {p0, v10, v11, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 452
    .local v0, count:I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_b

    if-le v0, v3, :cond_d

    .line 453
    :cond_b
    const-string v10, "CameraExif"

    const-string v11, "Invalid offset"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 448
    .end local v0           #count:I
    .end local v4           #littleEndian:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 456
    .restart local v0       #count:I
    .restart local v4       #littleEndian:Z
    :cond_d
    add-int/2addr v6, v0

    .line 457
    sub-int/2addr v3, v0

    .line 460
    add-int/lit8 v10, v6, -0x2

    const/4 v11, 0x2

    invoke-static {p0, v10, v11, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 461
    .end local v0           #count:I
    .local v1, count:I
    :goto_5
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    if-lez v1, :cond_e

    const/16 v10, 0xc

    if-ge v3, v10, :cond_f

    .line 487
    .end local v0           #count:I
    .end local v4           #littleEndian:Z
    .end local v9           #tag:I
    :cond_e
    const-string v10, "CameraExif"

    const-string v11, "Orientation not found"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 463
    .restart local v0       #count:I
    .restart local v4       #littleEndian:Z
    .restart local v9       #tag:I
    :cond_f
    const/4 v10, 0x2

    invoke-static {p0, v6, v10, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v9

    .line 464
    const/16 v10, 0x112

    if-ne v9, v10, :cond_10

    .line 466
    add-int/lit8 v10, v6, 0x8

    const/4 v11, 0x2

    invoke-static {p0, v10, v11, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v8

    .line 467
    .local v8, orientation:I
    packed-switch v8, :pswitch_data_0

    .line 477
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

    .line 478
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 469
    :pswitch_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 471
    :pswitch_2
    const/16 v10, 0xb4

    goto/16 :goto_0

    .line 473
    :pswitch_3
    const/16 v10, 0x5a

    goto/16 :goto_0

    .line 475
    :pswitch_4
    const/16 v10, 0x10e

    goto/16 :goto_0

    .line 480
    .end local v8           #orientation:I
    :cond_10
    add-int/lit8 v6, v6, 0xc

    .line 481
    add-int/lit8 v3, v3, -0xc

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_5

    .line 467
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
    .line 493
    const/4 v1, 0x1

    .line 494
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 495
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 496
    const/4 v1, -0x1

    .line 499
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 500
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-gtz v0, :cond_1

    .line 504
    return v2

    .line 501
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 502
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0
.end method

.method private static removeThumbnail([B)I
    .locals 13
    .parameter "jpeg"

    .prologue
    const v12, 0x49492a00

    const/16 v10, 0xa

    const/4 v9, 0x4

    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 316
    if-nez p0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v7

    .line 320
    :cond_1
    array-length v3, p0

    .line 321
    .local v3, length:I
    const/16 v5, 0xa

    .line 324
    .local v5, offset:I
    if-le v3, v10, :cond_0

    .line 325
    move v0, v5

    .line 327
    .local v0, baseOffset:I
    invoke-static {p0, v5, v9, v7}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v6

    .line 328
    .local v6, tag:I
    if-eq v6, v12, :cond_2

    const v8, 0x4d4d002a

    if-eq v6, v8, :cond_2

    .line 329
    const-string v8, "CameraExif"

    const-string v9, "Invalid byte order"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_2
    if-ne v6, v12, :cond_4

    const/4 v4, 0x1

    .line 335
    .local v4, littleEndian:Z
    :goto_1
    const/16 v8, 0xe

    invoke-static {p0, v8, v9, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v8

    add-int/lit8 v1, v8, 0x2

    .line 336
    .local v1, count:I
    if-lt v1, v10, :cond_3

    if-le v1, v3, :cond_5

    .line 337
    :cond_3
    const-string v8, "CameraExif"

    const-string v9, "Invalid offset"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #count:I
    .end local v4           #littleEndian:Z
    :cond_4
    move v4, v7

    .line 332
    goto :goto_1

    .line 340
    .restart local v1       #count:I
    .restart local v4       #littleEndian:Z
    :cond_5
    add-int/2addr v5, v1

    .line 341
    sub-int/2addr v3, v1

    .line 344
    add-int/lit8 v8, v5, -0x2

    invoke-static {p0, v8, v11, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v1

    move v2, v1

    .line 345
    .end local v1           #count:I
    .local v2, count:I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_6

    const/16 v8, 0xc

    if-ge v3, v8, :cond_7

    .line 353
    :cond_6
    aput-byte v7, p0, v5

    .line 354
    add-int/lit8 v8, v5, 0x1

    aput-byte v7, p0, v8

    .line 355
    add-int/lit8 v8, v5, 0x2

    aput-byte v7, p0, v8

    .line 356
    add-int/lit8 v8, v5, 0x3

    aput-byte v7, p0, v8

    goto :goto_0

    .line 347
    :cond_7
    invoke-static {p0, v5, v11, v4}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v6

    .line 348
    const-string v8, "CameraExif"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tag found: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    add-int/lit8 v5, v5, 0xc

    .line 350
    add-int/lit8 v3, v3, -0xc

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
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

    .line 258
    if-nez p0, :cond_0

    .line 311
    :goto_0
    return-object v5

    .line 262
    :cond_0
    const/4 v3, 0x0

    .line 263
    .local v3, offset:I
    const/4 v1, 0x0

    .line 266
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

    .line 303
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_2
    if-nez v1, :cond_8

    .line 304
    const-string v6, "CameraExif"

    const-string v7, "No Exif data found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_3
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 270
    .local v2, marker:I
    if-ne v2, v10, :cond_4

    move v3, v4

    .line 271
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 273
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .line 276
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 280
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_2

    const/16 v6, 0xda

    if-eq v2, v6, :cond_2

    .line 285
    invoke-static {p0, v3, v9, v8}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v1

    .line 286
    if-lt v1, v9, :cond_5

    add-int v6, v3, v1

    array-length v7, p0

    if-le v6, v7, :cond_6

    .line 287
    :cond_5
    const-string v6, "CameraExif"

    const-string v7, "Invalid length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_6
    const/16 v6, 0xe1

    if-ne v2, v6, :cond_7

    const/16 v6, 0x8

    if-lt v1, v6, :cond_7

    .line 293
    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x4

    invoke-static {p0, v6, v7, v8}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v6

    const v7, 0x45786966

    if-ne v6, v7, :cond_7

    .line 294
    add-int/lit8 v6, v3, 0x6

    invoke-static {p0, v6, v9, v8}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    :cond_7
    add-int/2addr v3, v1

    .line 300
    const/4 v1, 0x0

    goto :goto_1

    .line 308
    .end local v2           #marker:I
    :cond_8
    add-int/lit8 v5, v1, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 309
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 311
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

    .line 199
    if-nez p0, :cond_0

    .line 250
    :goto_0
    return-object v5

    .line 203
    :cond_0
    const/4 v3, 0x0

    .line 204
    .local v3, offset:I
    const/4 v1, 0x0

    .line 207
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

    .line 242
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_2
    if-nez v1, :cond_7

    .line 243
    const-string v6, "CameraExif"

    const-string v7, "No Jfif data found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_3
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 211
    .local v2, marker:I
    if-ne v2, v9, :cond_4

    move v3, v4

    .line 212
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 214
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .line 217
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 221
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_2

    const/16 v6, 0xda

    if-eq v2, v6, :cond_2

    .line 226
    const/4 v6, 0x0

    invoke-static {p0, v3, v8, v6}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v1

    .line 227
    if-lt v1, v8, :cond_5

    add-int v6, v3, v1

    array-length v7, p0

    if-le v6, v7, :cond_6

    .line 228
    :cond_5
    const-string v6, "CameraExif"

    const-string v7, "Invalid length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_6
    const/16 v6, 0xe0

    if-eq v2, v6, :cond_2

    .line 238
    add-int/2addr v3, v1

    .line 239
    const/4 v1, 0x0

    goto :goto_1

    .line 247
    .end local v2           #marker:I
    :cond_7
    add-int/lit8 v5, v1, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 250
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

    .line 134
    if-nez p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v5

    .line 138
    :cond_1
    const/4 v3, 0x0

    .line 139
    .local v3, offset:I
    const/4 v1, 0x0

    .line 140
    .local v1, length:I
    const/4 v2, 0x0

    .line 143
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

    .line 181
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_3
    if-eq v2, v10, :cond_8

    .line 182
    const-string v6, "CameraExif"

    const-string v7, "No stream data found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 147
    if-ne v2, v11, :cond_5

    move v3, v4

    .line 148
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 151
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

    .line 153
    add-int/lit8 v3, v4, 0x1

    .line 156
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 161
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_0

    .line 165
    if-eq v2, v10, :cond_3

    .line 170
    const/4 v6, 0x0

    invoke-static {p0, v3, v9, v6}, Lvisidon/Lib/enhancementutils/Exif;->pack([BIIZ)I

    move-result v1

    .line 171
    if-lt v1, v9, :cond_6

    add-int v6, v3, v1

    array-length v7, p0

    if-le v6, v7, :cond_7

    .line 172
    :cond_6
    const-string v6, "CameraExif"

    const-string v7, "Invalid length"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_7
    add-int/2addr v3, v1

    .line 178
    const/4 v1, 0x0

    goto :goto_1

    .line 186
    :cond_8
    array-length v5, p0

    add-int/lit8 v6, v3, -0x2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    array-length v6, p0

    add-int/lit8 v7, v3, -0x2

    sub-int/2addr v6, v7

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 189
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

    .line 36
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 39
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

    .line 41
    invoke-static {p0}, Lvisidon/Lib/enhancementutils/Exif;->saveExifData([B)[B

    move-result-object v1

    .line 43
    .local v1, exif:[B
    if-eqz v1, :cond_0

    .line 46
    invoke-static {p1}, Lvisidon/Lib/enhancementutils/Exif;->saveJfifData([B)[B

    move-result-object v2

    .line 49
    .local v2, jfif:[B
    invoke-static {p1}, Lvisidon/Lib/enhancementutils/Exif;->saveStreamData([B)[B

    move-result-object v3

    .line 51
    .local v3, stream:[B
    if-eqz v3, :cond_0

    .line 55
    invoke-static {v1, v2, v3}, Lvisidon/Lib/enhancementutils/Exif;->combineData([B[B[B)[B

    move-result-object v0

    .line 57
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
