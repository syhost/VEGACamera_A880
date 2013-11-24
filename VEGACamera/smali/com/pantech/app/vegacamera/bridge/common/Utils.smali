.class public Lcom/pantech/app/vegacamera/bridge/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "GalleryDebug"

.field private static final INITIALCRC:J = -0x1L

#the value of this static final field might be set in the static constructor
.field private static final IS_DEBUG_BUILD:Z = false

.field private static final MASK_STRING:Ljava/lang/String; = "********************************"

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 36
    new-array v6, v10, [J

    sput-object v6, Lcom/pantech/app/vegacamera/bridge/common/Utils;->sCrcTable:[J

    .line 38
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    sput-boolean v6, Lcom/pantech/app/vegacamera/bridge/common/Utils;->IS_DEBUG_BUILD:Z

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v10, :cond_1

    .line 156
    return-void

    .end local v0           #i:I
    :cond_0
    move v6, v7

    .line 38
    goto :goto_0

    .line 149
    .restart local v0       #i:I
    :cond_1
    int-to-long v2, v0

    .line 150
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    const/16 v6, 0x8

    if-lt v1, v6, :cond_2

    .line 154
    sget-object v6, Lcom/pantech/app/vegacamera/bridge/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const-wide v4, -0x6a536cd653b4364bL

    .line 152
    .local v4, x:J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    .end local v4           #x:J
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method public static ceilLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 196
    :cond_0
    return v0

    .line 193
    :cond_1
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-gez v1, :cond_0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 107
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 111
    .end local p2
    :goto_0
    return p2

    .line 109
    .restart local p2
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 110
    goto :goto_0

    :cond_1
    move p2, p0

    .line 111
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 98
    if-le p0, p2, :cond_0

    .line 102
    .end local p2
    :goto_0
    return p2

    .line 100
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 101
    goto :goto_0

    :cond_1
    move p2, p0

    .line 102
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 116
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 120
    .end local p4
    :goto_0
    return-wide p4

    .line 118
    .restart local p4
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    .line 119
    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 120
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 219
    if-eqz p0, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 210
    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 187
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 319
    new-array v0, p1, [Ljava/lang/String;

    .line 320
    .local v0, result:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 321
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    return-object v0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .parameter "in"

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    const-wide/16 v0, 0x0

    .line 142
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .parameter "buffer"

    .prologue
    .line 159
    const-wide/16 v0, -0x1

    .line 160
    .local v0, crc:J
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, p0

    .local v3, n:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 163
    return-wide v0

    .line 161
    :cond_0
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 338
    const-string v0, "GalleryDebug"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 245
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 68
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 294
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 295
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 312
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :sswitch_2
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 306
    :sswitch_3
    const-string v4, "&#039;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    :sswitch_4
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0
    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static floorLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 205
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 202
    :cond_1
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-gtz v1, :cond_0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 168
    .local v3, result:[B
    const/4 v1, 0x0

    .line 169
    .local v1, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    move v2, v1

    .end local v1           #output:I
    .local v2, output:I
    :goto_0
    if-lt v4, v6, :cond_0

    .line 173
    return-object v3

    .line 169
    :cond_0
    aget-char v0, v5, v4

    .line 170
    .local v0, ch:C
    add-int/lit8 v1, v2, 0x1

    .end local v2           #output:I
    .restart local v1       #output:I
    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 171
    add-int/lit8 v2, v1, 0x1

    .end local v1           #output:I
    .restart local v2       #output:I
    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 283
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static interpolateAngle(FFF)F
    .locals 5
    .parameter "source"
    .parameter "target"
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b4

    .line 230
    sub-float v0, p1, p0

    .line 231
    .local v0, diff:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    .line 232
    add-float/2addr v0, v3

    .line 233
    :cond_0
    const/high16 v2, 0x4334

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 234
    sub-float/2addr v0, v3

    .line 236
    :cond_1
    mul-float v2, v0, p2

    add-float v1, p0, v2

    .line 237
    .local v1, result:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    add-float/2addr v1, v3

    .end local v1           #result:F
    :cond_2
    return v1
.end method

.method public static interpolateScale(FFF)F
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "progress"

    .prologue
    .line 241
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "exifMake"

    .prologue
    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 124
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "info"

    .prologue
    .line 329
    if-nez p0, :cond_1

    .line 330
    const/4 v1, 0x0

    .line 333
    :cond_0
    :goto_0
    return-object v1

    .line 331
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    .local v0, length:I
    sget-boolean v2, Lcom/pantech/app/vegacamera/bridge/common/Utils;->IS_DEBUG_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 76
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 79
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 80
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 81
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 82
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 83
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 84
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static parseFloatSafely(Ljava/lang/String;F)F
    .locals 1
    .parameter "content"
    .parameter "defaultValue"

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 254
    .end local p1
    :goto_0
    return p1

    .line 252
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parseIntSafely(Ljava/lang/String;I)I
    .locals 1
    .parameter "content"
    .parameter "defaultValue"

    .prologue
    .line 259
    if-nez p0, :cond_0

    .line 264
    .end local p1
    :goto_0
    return p1

    .line 262
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 91
    if-gtz p0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 93
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static swap([III)V
    .locals 2
    .parameter "array"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 128
    aget v0, p0, p1

    .line 129
    .local v0, temp:I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 130
    aput v0, p0, p2

    .line 131
    return-void
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected interrupt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
