.class public Lcom/pantech/app/vegacamera/panorama/PanoUtil;
.super Ljava/lang/Object;
.source "PanoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CalculateDifferenceBetweenAngles(DD)D
    .locals 10
    .parameter "firstAngle"
    .parameter "secondAngle"

    .prologue
    const-wide/16 v8, 0x0

    const-wide v6, 0x4076800000000000L

    .line 15
    sub-double v4, p2, p0

    rem-double v0, v4, v6

    .line 16
    .local v0, difference1:D
    cmpg-double v4, v0, v8

    if-gez v4, :cond_0

    .line 17
    add-double/2addr v0, v6

    .line 20
    :cond_0
    sub-double v4, p0, p2

    rem-double v2, v4, v6

    .line 21
    .local v2, difference2:D
    cmpg-double v4, v2, v8

    if-gez v4, :cond_1

    .line 22
    add-double/2addr v2, v6

    .line 25
    :cond_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static CreateName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .parameter "format"
    .parameter "dateTaken"

    .prologue
    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 9
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static DecodeYUV420SPQuarterRes([I[BII)V
    .locals 17
    .parameter "rgb"
    .parameter "yuv420sp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    mul-int v2, p2, p3

    .line 31
    .local v2, frameSize:I
    const/4 v5, 0x0

    .local v5, j:I
    const/4 v13, 0x0

    .local v13, ypd:I
    :goto_0
    move/from16 v0, p3

    if-lt v5, v0, :cond_0

    .line 67
    return-void

    .line 32
    :cond_0
    shr-int/lit8 v14, v5, 0x1

    mul-int v14, v14, p2

    add-int v8, v2, v14

    .local v8, uvp:I
    const/4 v7, 0x0

    .local v7, u:I
    const/4 v10, 0x0

    .line 33
    .local v10, v:I
    const/4 v4, 0x0

    .local v4, i:I
    move v9, v8

    .end local v8           #uvp:I
    .local v9, uvp:I
    :goto_1
    move/from16 v0, p2

    if-lt v4, v0, :cond_1

    .line 31
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 34
    :cond_1
    mul-int v14, v5, p2

    add-int/2addr v14, v4

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v11, v14, -0x10

    .line 35
    .local v11, y:I
    if-gez v11, :cond_2

    .line 36
    const/4 v11, 0x0

    .line 38
    :cond_2
    and-int/lit8 v14, v4, 0x1

    if-nez v14, :cond_9

    .line 39
    add-int/lit8 v8, v9, 0x1

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v14, -0x80

    .line 40
    add-int/lit8 v9, v8, 0x1

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    aget-byte v14, p1, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v7, v14, -0x80

    .line 41
    add-int/lit8 v8, v9, 0x2

    .line 43
    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    :goto_2
    mul-int/lit16 v12, v11, 0x4a8

    .line 44
    .local v12, y1192:I
    mul-int/lit16 v14, v10, 0x662

    add-int v6, v12, v14

    .line 45
    .local v6, r:I
    mul-int/lit16 v14, v10, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v7, 0x190

    sub-int v3, v14, v15

    .line 46
    .local v3, g:I
    mul-int/lit16 v14, v7, 0x812

    add-int v1, v12, v14

    .line 48
    .local v1, b:I
    if-gez v6, :cond_6

    .line 49
    const/4 v6, 0x0

    .line 53
    :cond_3
    :goto_3
    if-gez v3, :cond_7

    .line 54
    const/4 v3, 0x0

    .line 58
    :cond_4
    :goto_4
    if-gez v1, :cond_8

    .line 59
    const/4 v1, 0x0

    .line 64
    :cond_5
    :goto_5
    const/high16 v14, -0x100

    shl-int/lit8 v15, v6, 0x6

    const/high16 v16, 0xff

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v3, 0x2

    const v16, 0xff00

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0xa

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, p0, v13

    .line 33
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v13, v13, 0x1

    move v9, v8

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    goto :goto_1

    .line 50
    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    :cond_6
    const v14, 0x3ffff

    if-le v6, v14, :cond_3

    .line 51
    const v6, 0x3ffff

    goto :goto_3

    .line 55
    :cond_7
    const v14, 0x3ffff

    if-le v3, v14, :cond_4

    .line 56
    const v3, 0x3ffff

    goto :goto_4

    .line 60
    :cond_8
    const v14, 0x3ffff

    if-le v1, v14, :cond_5

    .line 61
    const v1, 0x3ffff

    goto :goto_5

    .end local v1           #b:I
    .end local v3           #g:I
    .end local v6           #r:I
    .end local v8           #uvp:I
    .end local v12           #y1192:I
    .restart local v9       #uvp:I
    :cond_9
    move v8, v9

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    goto :goto_2
.end method
