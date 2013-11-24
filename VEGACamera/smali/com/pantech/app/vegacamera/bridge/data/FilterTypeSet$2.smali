.class Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$2;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$2;->this$0:Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 127
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->delete()V

    .line 130
    :cond_0
    return-void
.end method
