.class public Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils$NameComparator;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)I
    .locals 3
    .parameter "set1"
    .parameter "set2"

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 57
    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    check-cast p2, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils$NameComparator;->compare(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)I

    move-result v0

    return v0
.end method
