.class public Lcom/pantech/app/vegacamera/picbest/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final PREF_KEY_IS_BESTSHOT_FIRST_ENTER:Ljava/lang/String; = "pref_is_bestshot_first_enter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BytesToBimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "byteArray"

    .prologue
    .line 214
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DeleteLocalFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, flag:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 327
    const/4 v2, 0x0

    .line 351
    :cond_0
    :goto_0
    return v2

    .line 328
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 330
    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 332
    .local v0, children:[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 333
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_4

    .line 347
    .end local v3           #i:I
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 334
    .restart local v3       #i:I
    :cond_4
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 335
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->DeleteLocalFile(Ljava/lang/String;)Z

    move-result v2

    .line 336
    if-eqz v2, :cond_3

    .line 333
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 339
    :cond_6
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 340
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->DeleteLocalFile(Ljava/lang/String;)Z

    move-result v2

    .line 341
    if-nez v2, :cond_5

    goto :goto_2
.end method

.method public static SaveoneLocalFile(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 6
    .parameter "context"
    .parameter "name"
    .parameter "mybyte"

    .prologue
    const/4 v4, 0x1

    .line 357
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 359
    .local v3, stream:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 361
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    if-eqz v1, :cond_0

    .line 363
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 365
    :cond_0
    if-eqz v1, :cond_3

    .line 366
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 367
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 368
    const/4 v0, 0x0

    .line 373
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :goto_0
    if-eqz v0, :cond_1

    .line 375
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 385
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v4

    .line 370
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 371
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 373
    if-eqz v0, :cond_1

    .line 375
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 378
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 372
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 373
    :goto_4
    if-eqz v0, :cond_2

    .line 375
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 378
    :goto_5
    const/4 v0, 0x0

    .line 380
    :cond_2
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 382
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 383
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1

    .line 376
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_5

    :catch_4
    move-exception v5

    goto :goto_1

    .line 372
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 370
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method public static getBitmapFromByte([BII)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "byteArray"
    .parameter "desWidth"
    .parameter "desHeight"

    .prologue
    const/4 v11, 0x0

    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, outBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 233
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 234
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 235
    array-length v9, p0

    invoke-static {p0, v11, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 236
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 237
    .local v2, imgWidth:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 238
    .local v1, imgHeight:I
    if-lt v2, p1, :cond_0

    if-ge v1, p2, :cond_1

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->BytesToBimap([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 263
    :goto_0
    return-object v4

    .line 241
    :cond_1
    int-to-float v9, v2

    int-to-float v10, p1

    div-float v7, v9, v10

    .line 242
    .local v7, scaleWidth:F
    int-to-float v9, v1

    int-to-float v10, p2

    div-float v6, v9, v10

    .line 243
    .local v6, scaleHeight:F
    const/4 v5, 0x0

    .line 244
    .local v5, scale:F
    const/4 v8, 0x1

    .line 245
    .local v8, times:I
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 246
    cmpl-float v9, v7, v6

    if-lez v9, :cond_2

    .line 247
    move v5, v6

    .line 251
    :goto_1
    const/high16 v9, 0x4000

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 252
    invoke-static {p0}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->BytesToBimap([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 253
    goto :goto_0

    .line 249
    :cond_2
    move v5, v7

    goto :goto_1

    .line 254
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v9, 0x3

    if-lt v0, v9, :cond_4

    .line 259
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 260
    array-length v9, p0

    invoke-static {p0, v11, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 255
    :cond_4
    mul-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    cmpg-float v9, v9, v5

    if-gtz v9, :cond_5

    .line 256
    mul-int/lit8 v8, v8, 0x2

    .line 254
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 34
    .local v0, b:[B
    if-eqz v0, :cond_0

    .line 35
    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromByte([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 37
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 6
    .parameter "f"

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p0, :cond_0

    .line 84
    :goto_0
    return-object v4

    .line 72
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .local v3, stream:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 74
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 76
    .local v0, b:[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, n:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 79
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 80
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 81
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 77
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v0           #b:[B
    .end local v1           #n:I
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getFiles(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v8, 0x0

    .line 124
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 126
    .local v5, files:[Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, Paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 128
    .local v1, count:I
    if-eqz v5, :cond_1

    .line 129
    array-length v7, v5

    .line 130
    .local v7, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v7, :cond_2

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 150
    .end local v6           #i:I
    .end local v7           #len:I
    :cond_1
    return-object v8

    .line 131
    .restart local v6       #i:I
    .restart local v7       #len:I
    :cond_2
    aget-object v3, v5, v6

    .line 132
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, filepath:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 137
    :cond_3
    const/4 v9, 0x5

    if-eq v1, v9, :cond_0

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    .end local v3           #file:Ljava/io/File;
    .end local v4           #filepath:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 145
    .local v8, pathArray:[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_1
    array-length v9, v8

    if-ge v6, v9, :cond_1

    .line 146
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v6

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static getFilesDir(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 97
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 102
    .local v4, files:[Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, Paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 104
    array-length v6, v4

    .line 105
    .local v6, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v6, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 119
    .end local v5           #i:I
    .end local v6           #len:I
    :cond_1
    return-object v7

    .line 106
    .restart local v5       #i:I
    .restart local v6       #len:I
    :cond_2
    aget-object v2, v4, v5

    .line 107
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, filepath:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filepath:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 114
    .local v7, pathArray:[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_1
    array-length v8, v7

    if-ge v5, v8, :cond_1

    .line 115
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v5

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, -0x1

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, degree:I
    const/4 v1, 0x0

    .line 44
    .local v1, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    move-object v1, v2

    .line 47
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 48
    const-string v4, "Orientation"

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, orientation:I
    if-eq v3, v5, :cond_0

    .line 51
    packed-switch v3, :pswitch_data_0

    .line 64
    .end local v3           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 53
    .restart local v3       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 54
    goto :goto_1

    .line 56
    :pswitch_2
    const/16 v0, 0xb4

    .line 57
    goto :goto_1

    .line 59
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 45
    .end local v3           #orientation:I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"

    .prologue
    const/4 v11, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 192
    .local v2, mCentreX:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 193
    .local v3, mCentreY:I
    if-ge v2, v3, :cond_0

    move v6, v2

    .line 195
    .local v6, r:I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 196
    .local v4, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 199
    .local v1, color:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 200
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    .local v7, rect:Landroid/graphics/Rect;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 204
    const v8, -0xbdbdbe

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    int-to-float v8, v2

    int-to-float v9, v3

    int-to-float v10, v6

    invoke-virtual {v0, v8, v9, v10, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 208
    invoke-virtual {v0, p0, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 210
    return-object v4

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #color:I
    .end local v4           #output:Landroid/graphics/Bitmap;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #r:I
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_0
    move v6, v3

    .line 193
    goto :goto_0
.end method

.method public static isFirstEntered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pref_key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    const-string v3, "pref_is_bestshot_first_enter"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 225
    if-gtz p0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 227
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static saveFileFromPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "srcPath"
    .parameter "destPath"
    .parameter "partName"

    .prologue
    .line 268
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, destFullPath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 273
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 274
    .local v7, fos:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v10, srcFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, destFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 283
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, destFileDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 288
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 296
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    .line 297
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_3
    new-array v0, v11, [B
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 298
    .local v0, buffer:[B
    const/4 v9, 0x0

    .line 300
    .local v9, n:I
    :goto_2
    const/4 v11, -0x1

    :try_start_4
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v9

    if-ne v11, v9, :cond_4

    .line 307
    if-eqz v8, :cond_3

    .line 308
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 310
    :cond_3
    if-eqz v6, :cond_8

    .line 311
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 313
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 289
    .end local v0           #buffer:[B
    .end local v9           #n:I
    :catch_0
    move-exception v4

    .line 290
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 301
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #n:I
    :cond_4
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v8, v0, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 303
    :catch_1
    move-exception v4

    .line 304
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 307
    if-eqz v8, :cond_5

    .line 308
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 310
    :cond_5
    if-eqz v6, :cond_8

    .line 311
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 313
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 314
    .local v4, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 305
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v11

    .line 307
    if-eqz v8, :cond_6

    .line 308
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 310
    :cond_6
    if-eqz v6, :cond_7

    .line 311
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    .line 316
    :cond_7
    :goto_3
    :try_start_b
    throw v11
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3

    .line 317
    .end local v0           #buffer:[B
    .end local v9           #n:I
    :catch_3
    move-exception v4

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 318
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :goto_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 313
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #n:I
    :catch_4
    move-exception v4

    .line 314
    .local v4, e:Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 313
    .end local v4           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 314
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 317
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0           #buffer:[B
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #n:I
    :catch_6
    move-exception v4

    goto :goto_4

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #n:I
    :cond_8
    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public static setFirstEntered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "pref_key"

    .prologue
    const/4 v3, 0x0

    .line 399
    const-string v2, "pref_is_bestshot_first_enter"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 400
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    return-void
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "mybyte"
    .parameter "path"
    .parameter "partName"

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    sget-object p1, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    .line 158
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 159
    .local v3, dateTaken:J
    const-string v8, "yyyyMMddkkmmss"

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, date:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, filename:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 164
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 166
    :cond_1
    const/4 v0, 0x0

    .line 168
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    if-eqz v1, :cond_2

    .line 170
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 172
    :cond_2
    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 174
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 175
    const/4 v0, 0x0

    .line 180
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :goto_0
    if-eqz v0, :cond_3

    .line 182
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 185
    :goto_1
    const/4 v0, 0x0

    .line 188
    :cond_3
    :goto_2
    return-void

    .line 177
    :catch_0
    move-exception v5

    .line 178
    .local v5, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v0, :cond_3

    .line 182
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 185
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 179
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 180
    :goto_5
    if-eqz v0, :cond_4

    .line 182
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 185
    :goto_6
    const/4 v0, 0x0

    .line 187
    :cond_4
    throw v8

    .line 183
    .restart local v5       #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_6

    :catch_3
    move-exception v8

    goto :goto_1

    .line 179
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 177
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :cond_5
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method
