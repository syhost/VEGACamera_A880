.class Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 1366
    return-void
.end method


# virtual methods
.method public GenerateName(J)Ljava/lang/String;
    .locals 8
    .parameter "dateTaken"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1369
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 1370
    .local v0, date:Ljava/sql/Date;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1374
    .local v1, result:Ljava/lang/String;
    div-long v2, p1, v6

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mLastDate:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1375
    iget v2, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mSameSecondCount:I

    .line 1376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    :goto_0
    return-object v1

    .line 1378
    :cond_0
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mLastDate:J

    .line 1379
    const/4 v2, 0x0

    iput v2, p0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
