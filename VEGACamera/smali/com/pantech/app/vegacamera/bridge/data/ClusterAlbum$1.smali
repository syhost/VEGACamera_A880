.class Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$1;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/pantech/app/vegacamera/bridge/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;


# direct methods
.method constructor <init>([Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$1;->val$buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$1;->val$buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    aput-object p2, v0, p1

    .line 82
    return-void
.end method
