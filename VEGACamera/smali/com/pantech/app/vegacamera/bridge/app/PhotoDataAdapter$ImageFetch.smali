.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFetch"
.end annotation


# instance fields
.field imageBit:I

.field indexOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "offset"
    .parameter "bit"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "PhotoDataAdapter"

    const-string v1, "ImageFetch"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 87
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 88
    return-void
.end method
