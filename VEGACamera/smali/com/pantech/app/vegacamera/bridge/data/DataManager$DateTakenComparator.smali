.class Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTakenComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)I
    .locals 4
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    check-cast p2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;->compare(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)I

    move-result v0

    return v0
.end method
