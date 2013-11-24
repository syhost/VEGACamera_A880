.class Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;
.super Ljava/lang/Object;
.source "LocalSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;)I
    .locals 5
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 242
    iget-object v4, p1, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, s1:Ljava/lang/String;
    iget-object v4, p2, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, s2:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    .local v0, len1:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 246
    .local v1, len2:I
    if-ge v0, v1, :cond_0

    .line 247
    const/4 v4, -0x1

    .line 251
    :goto_0
    return v4

    .line 248
    :cond_0
    if-le v0, v1, :cond_1

    .line 249
    const/4 v4, 0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    check-cast p2, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;->compare(Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;)I

    move-result v0

    return v0
.end method
