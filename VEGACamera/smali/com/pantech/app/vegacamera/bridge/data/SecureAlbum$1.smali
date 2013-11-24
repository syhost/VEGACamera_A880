.class Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum$1;
.super Ljava/lang/Object;
.source "SecureAlbum.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->getMediaItem(II)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

.field private final synthetic val$buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum$1;->this$0:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum$1;->val$buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum$1;->val$buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    aput-object p2, v0, p1

    .line 99
    return-void
.end method
