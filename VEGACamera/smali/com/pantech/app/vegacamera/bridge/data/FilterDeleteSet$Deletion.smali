.class Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deletion"
.end annotation


# instance fields
.field index:I

.field path:Lcom/pantech/app/vegacamera/bridge/data/Path;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "index"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 57
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    .line 58
    return-void
.end method
