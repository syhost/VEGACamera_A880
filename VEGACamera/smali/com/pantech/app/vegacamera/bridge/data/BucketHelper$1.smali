.class Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$1;
.super Ljava/lang/Object;
.source "BucketHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 130
    iget v0, p2, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->dateTaken:I

    iget v1, p1, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->dateTaken:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    check-cast p2, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$1;->compare(Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;)I

    move-result v0

    return v0
.end method
