.class public Lcom/pantech/app/vegacamera/bridge/data/SnailItem;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
.source "SnailItem.java"


# instance fields
.field private mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 35
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 36
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, ""

    return-object v0
.end method

.method public getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/SnailItem$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem$1;-><init>(Lcom/pantech/app/vegacamera/bridge/data/SnailItem;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/SnailItem$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem$2;-><init>(Lcom/pantech/app/vegacamera/bridge/data/SnailItem;)V

    return-object v0
.end method

.method public setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V
    .locals 0
    .parameter "screenNail"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 88
    return-void
.end method

.method public updateVersion()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->mDataVersion:J

    .line 92
    return-void
.end method
