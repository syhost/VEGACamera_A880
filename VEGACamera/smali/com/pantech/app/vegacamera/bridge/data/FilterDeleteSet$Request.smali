.class Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field indexHint:I

.field path:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field type:I


# direct methods
.method public constructor <init>(ILcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 0
    .parameter "type"
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->type:I

    .line 46
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 47
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->indexHint:I

    .line 48
    return-void
.end method
