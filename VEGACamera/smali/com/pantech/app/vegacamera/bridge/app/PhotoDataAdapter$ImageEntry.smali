.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public requestedFullImage:J

.field public requestedScreenNail:J

.field public screenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

.field public screenNailTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 978
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 972
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
