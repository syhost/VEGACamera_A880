.class Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;

.field private final synthetic val$buf:[Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;I[Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;

    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;->val$total:I

    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;->val$buf:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 102
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getMediaType()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mMediaType:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->access$0(Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 103
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;->val$total:I

    if-lt p1, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    .line 106
    .local v0, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;->val$buf:[Lcom/pantech/app/vegacamera/bridge/data/Path;

    aput-object v0, v1, p1

    goto :goto_0
.end method
