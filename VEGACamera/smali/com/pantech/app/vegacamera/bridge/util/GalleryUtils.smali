.class public Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field private static final DIR_TYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final DIR_TYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field private static final EARTH_RADIUS_METERS:D = 6367000.0

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field private static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final RAD_PER_DEG:D = 0.017453292519943295

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"

.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field private static volatile sWarned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 14
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"

    .prologue
    .line 115
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 116
    .local v0, dlat:D
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p6, p2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 117
    .local v2, dlng:D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 118
    .local v4, x:D
    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x415849c600000000L

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    .prologue
    .line 82
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->sWarned:Z

    .line 85
    const-string v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, typeBits:I
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, type:Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const/4 v1, 0x3

    .line 219
    :goto_0
    sget-boolean v2, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    or-int/lit8 v1, v1, 0x4

    .line 225
    :cond_0
    return v1

    .line 211
    :cond_1
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    :cond_2
    const/4 v1, 0x1

    .line 213
    goto :goto_0

    :cond_3
    const-string v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    :cond_4
    const/4 v1, 0x2

    .line 215
    goto :goto_0

    .line 216
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static fakeBusy(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;I)V
    .locals 3
    .parameter "jc"
    .parameter "timeout"

    .prologue
    .line 127
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 128
    .local v0, cv:Landroid/os/ConditionVariable;
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils$1;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils$1;-><init>(Landroid/os/ConditionVariable;)V

    invoke-interface {p0, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 134
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 135
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 136
    return-void
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 12
    .parameter "latRad1"
    .parameter "lngRad1"
    .parameter "latRad2"
    .parameter "lngRad2"

    .prologue
    .line 94
    sub-double v8, p0, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, p2, p6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 95
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide v8

    .line 111
    :goto_0
    return-wide v8

    .line 98
    :cond_1
    sub-double v2, p0, p4

    .line 101
    .local v2, sineLat:D
    sub-double v4, p2, p6

    .line 105
    .local v4, sineLng:D
    add-double v8, p0, p4

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 106
    .local v0, cosTerms:D
    mul-double/2addr v0, v0

    .line 107
    mul-double v8, v2, v2

    mul-double v10, v0, v4

    mul-double/2addr v10, v4

    add-double v6, v8, v10

    .line 108
    .local v6, trigTerm:D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 111
    const-wide v8, 0x415849c600000000L

    mul-double/2addr v8, v6

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "duration"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    div-int/lit16 v1, p1, 0xe10

    .line 194
    .local v1, h:I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 195
    .local v2, m:I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 197
    .local v3, s:I
    if-nez v1, :cond_0

    .line 198
    sget v4, Lcom/pantech/app/vegacamera/R$string;->details_ms:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, durationValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 200
    .end local v0           #durationValue:Ljava/lang/String;
    :cond_0
    sget v4, Lcom/pantech/app/vegacamera/R$string;->details_hms:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 152
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 63
    .local v3, result:[B
    const/4 v1, 0x0

    .line 64
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

    .line 68
    return-object v3

    .line 64
    :cond_0
    aget-char v0, v5, v4

    .line 65
    .local v0, ch:C
    add-int/lit8 v1, v2, 0x1

    .end local v2           #output:I
    .restart local v1       #output:I
    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 66
    add-int/lit8 v2, v1, 0x1

    .end local v1           #output:I
    .restart local v2       #output:I
    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 229
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 230
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    sget v0, Lcom/pantech/app/vegacamera/R$string;->select_video:I

    .line 232
    :goto_0
    return v0

    .line 230
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/R$string;->select_item:I

    goto :goto_0

    .line 232
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/R$string;->select_image:I

    goto :goto_0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 9
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 236
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v4

    .line 241
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    cmp-long v5, v5, p0

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 245
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "GalleryUtils"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static intColorToFloatARGBArray(I)[F
    .locals 4
    .parameter "from"

    .prologue
    const/high16 v3, 0x437f

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static isHighResolution(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x800

    .line 54
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPanorama(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 252
    if-nez p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getWidth()I

    move-result v1

    .line 255
    .local v1, w:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getHeight()I

    move-result v0

    .line 256
    .local v0, h:I
    if-lez v0, :cond_0

    div-int v3, v1, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 3
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v1, 0x0

    .line 146
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    .line 79
    return-void
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 4
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x0

    .line 180
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 181
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 182
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 183
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 184
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    aput v2, p0, v0

    .line 185
    return-void
.end method

.method public static showOnMap(Landroid/content/Context;DD)V
    .locals 8
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 161
    :try_start_0
    const-string v5, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    invoke-static {v5, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 164
    .local v2, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v3           #uri:Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    .end local v2           #mapsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "GalleryUtils"

    const-string v6, "GMM activity not found!"

    invoke-static {v5, v6, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    const-string v5, "geo:%f,%f"

    invoke-static {v5, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, url:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .restart local v2       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startCameraActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public static final toMile(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 122
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method
