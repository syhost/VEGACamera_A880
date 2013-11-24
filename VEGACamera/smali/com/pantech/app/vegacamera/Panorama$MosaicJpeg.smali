.class Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 158
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    .line 160
    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->width:I

    .line 161
    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->height:I

    .line 162
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->isValid:Z

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/Panorama;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->data:[B

    .line 153
    iput p3, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->width:I

    .line 154
    iput p4, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->height:I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;->isValid:Z

    .line 156
    return-void
.end method
