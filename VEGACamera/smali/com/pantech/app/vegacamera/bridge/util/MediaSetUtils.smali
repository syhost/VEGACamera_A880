.class public Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field public static final CAMERA_BUCKET_ID:I

.field private static final CAMERA_PATHS:[Lcom/pantech/app/vegacamera/bridge/data/Path;

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final IMPORTED_BUCKET_ID:I

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final SNAPSHOT_BUCKET_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils$NameComparator;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils$NameComparator;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string v1, "Imported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v1, "/Pictures/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pantech/app/vegacamera/bridge/data/Path;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/local/all/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/local/image/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/local/video/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCameraSource(Lcom/pantech/app/vegacamera/bridge/data/Path;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
