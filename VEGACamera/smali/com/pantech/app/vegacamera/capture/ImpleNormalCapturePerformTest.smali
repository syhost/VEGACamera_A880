.class public Lcom/pantech/app/vegacamera/capture/ImpleNormalCapturePerformTest;
.super Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.source "ImpleNormalCapturePerformTest.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V
    .locals 0
    .parameter "act"
    .parameter "photo"
    .parameter "data"
    .parameter "what"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V

    .line 12
    return-void
.end method


# virtual methods
.method protected OnPicutreTakenDonePerformTest()V
    .locals 4

    .prologue
    .line 21
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    .line 22
    return-void
.end method

.method protected StoreDonePerformTest()V
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    .line 32
    return-void
.end method

.method protected StoreStartPerformTest()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    .line 27
    return-void
.end method

.method protected TakePictureStartPerformTest()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    .line 17
    return-void
.end method
