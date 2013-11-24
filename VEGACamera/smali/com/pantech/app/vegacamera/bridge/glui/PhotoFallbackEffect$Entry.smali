.class public Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public dest:Landroid/graphics/Rect;

.field public index:I

.field public path:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field public source:Landroid/graphics/Rect;

.field public texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Landroid/graphics/Rect;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V
    .locals 0
    .parameter "path"
    .parameter "source"
    .parameter "texture"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 42
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 43
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    .line 44
    return-void
.end method
