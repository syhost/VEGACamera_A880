.class public Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathId"
.end annotation


# instance fields
.field public id:I

.field public path:Lcom/pantech/app/vegacamera/bridge/data/Path;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "id"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 65
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->id:I

    .line 66
    return-void
.end method
