.class public Lvisidon/Lib/enhancement/EnhancementAPI;
.super Ljava/lang/Object;
.source "EnhancementAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;,
        Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;,
        Lvisidon/Lib/enhancement/EnhancementAPI$InitState;,
        Lvisidon/Lib/enhancement/EnhancementAPI$Mode;,
        Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 766
    const-string v0, "VDEnhancementAPI-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addExifData([B[B)[B
    .locals 5
    .parameter "srcJPEG"
    .parameter "dstJPEG"

    .prologue
    .line 594
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 595
    :cond_0
    const/4 p1, 0x0

    .line 621
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 598
    .restart local p1
    :cond_2
    invoke-static {p0}, Lvisidon/Lib/enhancement/EnhancementAPI;->saveExifData([B)[B

    move-result-object v1

    .line 600
    .local v1, exif:[B
    if-eqz v1, :cond_1

    .line 606
    invoke-static {v1}, Lvisidon/Lib/enhancement/EnhancementAPI;->removeThumbnail([B)I

    .line 608
    array-length v3, p1

    array-length v4, v1

    add-int v2, v3, v4

    .line 610
    .local v2, length:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 612
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 613
    const/16 v3, -0x28

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 615
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 617
    const/4 v3, 0x2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 621
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_0
.end method

.method public static analyzeFaces([B)Ljava/util/ArrayList;
    .locals 6
    .parameter "image"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/FaceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v4, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/FaceInfo;>;"
    const/4 v2, 0x0

    .line 572
    .local v2, numberOfFaces:I
    invoke-static {p0}, Lvisidon/Lib/enhancement/EnhancementAPI;->analyzeFacesNative([B)I

    move-result v2

    .line 574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 579
    return-object v4

    .line 575
    :cond_0
    invoke-static {v0}, Lvisidon/Lib/enhancement/EnhancementAPI;->getFaceInfoNative(I)[I

    move-result-object v3

    .line 576
    .local v3, result:[I
    new-instance v1, Lvisidon/Lib/enhancement/FaceInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lvisidon/Lib/enhancement/FaceInfo;-><init>([ILjava/lang/String;)V

    .line 577
    .local v1, info:Lvisidon/Lib/enhancement/FaceInfo;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static native analyzeFacesNative([B)I
.end method

.method public static enhanceFaces(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
    .locals 16
    .parameter "inputImage"
    .parameter
    .parameter "forceFiltering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;Z)",
            "Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, enhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v3

    .line 463
    .local v3, smoothSkin:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v4

    .line 464
    .local v4, smoothSpots:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v5

    .line 465
    .local v5, faceContour:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v6

    .line 466
    .local v6, teethWhitening:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v7

    .line 467
    .local v7, eyeEnlargement:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v8

    .line 468
    .local v8, cheekBlush:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v9

    .line 469
    .local v9, colorAdjust:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v10

    .line 470
    .local v10, mouthShaping:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v11

    .line 471
    .local v11, noseShaping:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v12

    .line 474
    .local v12, eyeBrownShaping:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_1

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, force:I
    if-eqz p2, :cond_0

    .line 532
    const/4 v2, 0x1

    .line 533
    :cond_0
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->values()[Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    move-result-object v15

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v12}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFacesBitmapNative(Landroid/graphics/Bitmap;IIIIIIIIIII)I

    move-result v1

    aget-object v1, v15, v1

    return-object v1

    .line 476
    .end local v2           #force:I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getValue()I

    move-result v14

    .line 478
    .local v14, value:I
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_3

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v3

    .line 474
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 483
    :cond_3
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_4

    .line 484
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v4

    .line 485
    goto :goto_1

    .line 488
    :cond_4
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_5

    .line 489
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v5

    .line 490
    goto :goto_1

    .line 493
    :cond_5
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_6

    .line 494
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v6

    .line 495
    goto :goto_1

    .line 498
    :cond_6
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_7

    .line 499
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v7

    .line 500
    goto :goto_1

    .line 503
    :cond_7
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_8

    .line 504
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v8

    .line 505
    goto :goto_1

    .line 508
    :cond_8
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_9

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v9

    .line 510
    goto :goto_1

    .line 513
    :cond_9
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_a

    .line 514
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v10

    .line 515
    goto/16 :goto_1

    .line 518
    :cond_a
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_b

    .line 519
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v11

    .line 520
    goto/16 :goto_1

    .line 523
    :cond_b
    sget-object v1, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v1

    if-ne v1, v14, :cond_2

    .line 524
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v12

    goto/16 :goto_1
.end method

.method public static enhanceFaces(Landroid/graphics/Bitmap;ZIIIIIIIIII)Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
    .locals 13
    .parameter "inputImage"
    .parameter "forceFiltering"
    .parameter "smoothSkin"
    .parameter "smoothSpots"
    .parameter "faceContour"
    .parameter "teethWhitening"
    .parameter "eyeEnlargement"
    .parameter "cheekBlush"
    .parameter "colorAdjust"
    .parameter "mouthShaping"
    .parameter "noseShaping"
    .parameter "eyeBrownShaping"

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, force:I
    if-eqz p1, :cond_0

    .line 558
    const/4 v1, 0x1

    .line 559
    :cond_0
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->values()[Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    move-result-object v12

    move-object v0, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFacesBitmapNative(Landroid/graphics/Bitmap;IIIIIIIIIII)I

    move-result v0

    aget-object v0, v12, v0

    return-object v0
.end method

.method public static enhanceFaces([BLjava/util/ArrayList;Z)[B
    .locals 14
    .parameter "inputImage"
    .parameter
    .parameter "forceFiltering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;Z)[B"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, enhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v2

    .line 231
    .local v2, smoothSkin:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v3

    .line 232
    .local v3, smoothSpots:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v4

    .line 233
    .local v4, faceContour:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v5

    .line 234
    .local v5, teethWhitening:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v6

    .line 235
    .local v6, eyeEnlargement:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v7

    .line 236
    .local v7, cheekBlush:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v8

    .line 237
    .local v8, colorAdjust:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v9

    .line 238
    .local v9, mouthShaping:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v10

    .line 239
    .local v10, noseShaping:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v11

    .line 242
    .local v11, eyeBrownShaping:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v12, v0, :cond_0

    move-object v0, p0

    move/from16 v1, p2

    .line 298
    invoke-static/range {v0 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces([BZIIIIIIIIII)[B

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getValue()I

    move-result v13

    .line 246
    .local v13, value:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_2

    .line 247
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v2

    .line 242
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 251
    :cond_2
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_3

    .line 252
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v3

    .line 253
    goto :goto_1

    .line 256
    :cond_3
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_4

    .line 257
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v4

    .line 258
    goto :goto_1

    .line 261
    :cond_4
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_5

    .line 262
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v5

    .line 263
    goto :goto_1

    .line 266
    :cond_5
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_6

    .line 267
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v6

    .line 268
    goto :goto_1

    .line 271
    :cond_6
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_7

    .line 272
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v7

    .line 273
    goto :goto_1

    .line 276
    :cond_7
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_8

    .line 277
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v8

    .line 278
    goto :goto_1

    .line 281
    :cond_8
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_9

    .line 282
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v9

    .line 283
    goto/16 :goto_1

    .line 286
    :cond_9
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_a

    .line 287
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v10

    .line 288
    goto/16 :goto_1

    .line 291
    :cond_a
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v0

    if-ne v0, v13, :cond_1

    .line 292
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v11

    goto/16 :goto_1
.end method

.method public static enhanceFaces([BZIIIIIIIIII)[B
    .locals 13
    .parameter "inputImage"
    .parameter "forceFiltering"
    .parameter "smoothSkin"
    .parameter "smoothSpots"
    .parameter "faceContour"
    .parameter "teethWhitening"
    .parameter "eyeEnlargement"
    .parameter "cheekBlush"
    .parameter "colorAdjust"
    .parameter "mouthShaping"
    .parameter "noseShaping"
    .parameter "eyeBrownShaping"

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, force:I
    if-eqz p1, :cond_0

    .line 439
    const/4 v1, 0x1

    :cond_0
    move-object v0, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 442
    invoke-static/range {v0 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFacesJPEGNative([BIIIIIIIIIII)[B

    move-result-object v12

    .line 446
    .local v12, result:[B
    invoke-static {p0, v12}, Lvisidon/Lib/enhancement/EnhancementAPI;->addExifData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static enhanceFacesAndSaveImageToMediaStorage([BLjava/util/ArrayList;Landroid/content/Context;Ljava/io/File;Z)Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
    .locals 21
    .parameter "inputImage"
    .parameter
    .parameter "context"
    .parameter "photoFile"
    .parameter "forceFiltering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Z)",
            "Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, enhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v4

    .line 314
    .local v4, smoothSkin:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v5

    .line 315
    .local v5, smoothSpots:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v6

    .line 316
    .local v6, faceContour:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v7

    .line 317
    .local v7, teethWhitening:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v8

    .line 318
    .local v8, eyeEnlargement:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v9

    .line 319
    .local v9, cheekBlush:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v10

    .line 320
    .local v10, colorAdjust:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v11

    .line 321
    .local v11, mouthShaping:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v12

    .line 322
    .local v12, noseShaping:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v13

    .line 325
    .local v13, eyeBrownShaping:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_0

    move-object/from16 v2, p0

    move/from16 v3, p4

    .line 382
    invoke-static/range {v2 .. v13}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces([BZIIIIIIIIII)[B

    move-result-object v14

    .line 384
    .local v14, enhancedPhoto:[B
    if-nez v14, :cond_b

    .line 385
    const-string v2, "EnhancementAPI"

    const-string v3, "enhancedPhoto == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    .line 414
    :goto_1
    return-object v2

    .line 327
    .end local v14           #enhancedPhoto:[B
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getValue()I

    move-result v19

    .line 329
    .local v19, value:I
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 330
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v4

    .line 325
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 334
    :cond_2
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 335
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v5

    .line 336
    goto :goto_2

    .line 339
    :cond_3
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 340
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v6

    .line 341
    goto :goto_2

    .line 344
    :cond_4
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_5

    .line 345
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v7

    .line 346
    goto :goto_2

    .line 349
    :cond_5
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_6

    .line 350
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v8

    .line 351
    goto :goto_2

    .line 354
    :cond_6
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_7

    .line 355
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v9

    .line 356
    goto :goto_2

    .line 359
    :cond_7
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_8

    .line 360
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v10

    .line 361
    goto/16 :goto_2

    .line 364
    :cond_8
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_9

    .line 365
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v11

    .line 366
    goto/16 :goto_2

    .line 369
    :cond_9
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_a

    .line 370
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v12

    .line 371
    goto/16 :goto_2

    .line 374
    :cond_a
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_1

    .line 375
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v2}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v13

    goto/16 :goto_2

    .line 391
    .end local v19           #value:I
    .restart local v14       #enhancedPhoto:[B
    :cond_b
    :try_start_0
    new-instance v18, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 392
    .local v18, stream:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 393
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v2, v3

    const/4 v3, 0x0

    .line 403
    new-instance v20, Lvisidon/Lib/enhancement/EnhancementAPI$1;

    invoke-direct/range {v20 .. v20}, Lvisidon/Lib/enhancement/EnhancementAPI$1;-><init>()V

    .line 401
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v2, v3, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->OK:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    goto/16 :goto_1

    .line 395
    .end local v18           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v15

    .line 396
    .local v15, ex:Ljava/io/IOException;
    const-string v2, "EnhancementAPI"

    const-string v3, "Exception in image saving"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    goto/16 :goto_1

    .line 408
    .end local v15           #ex:Ljava/io/IOException;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v16

    .line 410
    .local v16, exe:Ljava/lang/Exception;
    const-string v2, "EnhancementAPI"

    const-string v3, "Exception in adding to mediastorage"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    goto/16 :goto_1
.end method

.method private static native enhanceFacesBitmapNative(Landroid/graphics/Bitmap;IIIIIIIIIII)I
.end method

.method private static native enhanceFacesJPEGNative([BIIIIIIIIIII)[B
.end method

.method public static enhanceFacesWithDefaultFilters([B)[B
    .locals 13
    .parameter "inputImage"

    .prologue
    .line 202
    const/4 v1, 0x1

    .line 203
    .local v1, forceFiltering:Z
    const/16 v2, 0x23

    .line 204
    .local v2, smoothSkin:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SPOT_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v3

    .line 205
    .local v3, smoothSpots:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->FACE_CONTOURING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v4

    .line 206
    .local v4, faceContour:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->TEETH_WHITENING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v5

    .line 207
    .local v5, teethWhitening:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v6

    .line 208
    .local v6, eyeEnlargement:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->CHEEK_BLUSHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v7

    .line 209
    .local v7, cheekBlush:I
    const/16 v8, 0x46

    .line 210
    .local v8, colorAdjust:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->MOUTH_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v9

    .line 211
    .local v9, mouthShaping:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->NOSE_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v10

    .line 212
    .local v10, noseShaping:I
    sget-object v0, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->EYEBROW_SHAPING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-virtual {v0}, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->getDefaultStrength()I

    move-result v11

    .local v11, eyeBrownShaping:I
    move-object v0, p0

    .line 214
    invoke-static/range {v0 .. v11}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces([BZIIIIIIIIII)[B

    move-result-object v12

    .line 217
    .local v12, result:[B
    return-object v12
.end method

.method private static native getFaceInfoNative(I)[I
.end method

.method public static initialize(IILvisidon/Lib/enhancement/EnhancementAPI$Mode;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;
    .locals 2
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "mode"

    .prologue
    .line 178
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->releaseNative()I

    move-result v0

    .line 179
    .local v0, state:I
    #getter for: Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->value:I
    invoke-static {p2}, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->access$2(Lvisidon/Lib/enhancement/EnhancementAPI$Mode;)I

    move-result v1

    invoke-static {p0, p1, v1}, Lvisidon/Lib/enhancement/EnhancementAPI;->initializeNative(III)I

    move-result v0

    .line 181
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->values()[Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static native initializeNative(III)I
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 751
    const/4 v1, 0x1

    .line 752
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 753
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 754
    const/4 v1, -0x1

    .line 757
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 758
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-gtz v0, :cond_1

    .line 762
    return v2

    .line 759
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 760
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0
.end method

.method public static release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;->values()[Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    move-result-object v0

    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->releaseNative()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static native releaseNative()I
.end method

.method private static removeThumbnail([B)I
    .locals 13
    .parameter "jpeg"

    .prologue
    const v12, 0x49492a00

    const/16 v11, 0xa

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 688
    if-nez p0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v7

    .line 692
    :cond_1
    array-length v3, p0

    .line 693
    .local v3, length:I
    const/16 v5, 0xa

    .line 696
    .local v5, offset:I
    if-le v3, v11, :cond_0

    .line 697
    move v0, v5

    .line 699
    .local v0, baseOffset:I
    invoke-static {p0, v5, v10, v7}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v6

    .line 700
    .local v6, tag:I
    if-eq v6, v12, :cond_2

    const v8, 0x4d4d002a

    if-ne v6, v8, :cond_0

    .line 703
    :cond_2
    if-ne v6, v12, :cond_4

    const/4 v4, 0x1

    .line 706
    .local v4, littleEndian:Z
    :goto_1
    const/16 v8, 0xe

    invoke-static {p0, v8, v10, v4}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v8

    add-int/lit8 v1, v8, 0x2

    .line 707
    .local v1, count:I
    if-lt v1, v11, :cond_0

    if-gt v1, v3, :cond_0

    .line 710
    add-int/2addr v5, v1

    .line 711
    sub-int/2addr v3, v1

    .line 714
    add-int/lit8 v8, v5, -0x2

    invoke-static {p0, v8, v9, v4}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v1

    move v2, v1

    .line 715
    .end local v1           #count:I
    .local v2, count:I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_3

    const/16 v8, 0xc

    if-ge v3, v8, :cond_5

    .line 722
    :cond_3
    aput-byte v7, p0, v5

    .line 723
    add-int/lit8 v8, v5, 0x1

    aput-byte v7, p0, v8

    .line 724
    add-int/lit8 v8, v5, 0x2

    aput-byte v7, p0, v8

    .line 725
    add-int/lit8 v8, v5, 0x3

    aput-byte v7, p0, v8

    goto :goto_0

    .end local v1           #count:I
    .end local v4           #littleEndian:Z
    :cond_4
    move v4, v7

    .line 703
    goto :goto_1

    .line 717
    .restart local v1       #count:I
    .restart local v4       #littleEndian:Z
    :cond_5
    invoke-static {p0, v5, v9, v4}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v6

    .line 718
    add-int/lit8 v5, v5, 0xc

    .line 719
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

    .line 629
    if-nez p0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-object v5

    .line 634
    :cond_1
    const/4 v3, 0x0

    .line 635
    .local v3, offset:I
    const/4 v1, 0x0

    .line 638
    .local v1, length:I
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

    if-eq v6, v10, :cond_4

    move v3, v4

    .line 675
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_3
    if-eqz v1, :cond_0

    .line 680
    add-int/lit8 v5, v1, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 681
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v0, p0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 683
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_0

    .line 639
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_4
    aget-byte v6, p0, v4

    and-int/lit16 v2, v6, 0xff

    .line 642
    .local v2, marker:I
    if-ne v2, v10, :cond_5

    move v3, v4

    .line 643
    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 645
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .line 648
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/16 v6, 0xd8

    if-eq v2, v6, :cond_2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 652
    const/16 v6, 0xd9

    if-eq v2, v6, :cond_3

    const/16 v6, 0xda

    if-eq v2, v6, :cond_3

    .line 657
    invoke-static {p0, v3, v9, v8}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v1

    .line 658
    if-lt v1, v9, :cond_0

    add-int v6, v3, v1

    array-length v7, p0

    if-gt v6, v7, :cond_0

    .line 664
    const/16 v6, 0xe1

    if-ne v2, v6, :cond_6

    const/16 v6, 0x8

    if-lt v1, v6, :cond_6

    .line 665
    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x4

    invoke-static {p0, v6, v7, v8}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v6

    const v7, 0x45786966

    if-ne v6, v7, :cond_6

    .line 666
    add-int/lit8 v6, v3, 0x6

    invoke-static {p0, v6, v9, v8}, Lvisidon/Lib/enhancement/EnhancementAPI;->pack([BIIZ)I

    move-result v6

    if-eqz v6, :cond_3

    .line 671
    :cond_6
    add-int/2addr v3, v1

    .line 672
    const/4 v1, 0x0

    goto :goto_1
.end method
