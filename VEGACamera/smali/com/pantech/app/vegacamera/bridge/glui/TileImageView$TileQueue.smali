.class Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 795
    return-void
.end method

.method public pop()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 781
    .local v0, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 782
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mNext:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 783
    :cond_0
    return-object v0
.end method

.method public push(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z
    .locals 2
    .parameter "tile"

    .prologue
    .line 787
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 788
    .local v0, wasEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    iput-object v1, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mNext:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 789
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->mHead:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 790
    return v0

    .line 787
    .end local v0           #wasEmpty:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
