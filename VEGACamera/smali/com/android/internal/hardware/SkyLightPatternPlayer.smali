.class public Lcom/android/internal/hardware/SkyLightPatternPlayer;
.super Lcom/android/internal/hardware/SkyThreadHelper;
.source "SkyLightPatternPlayer.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SkyLightPatternPlayer"


# instance fields
.field protected mAppId:I

.field private mContext:Landroid/content/Context;

.field protected mLed:[B

.field protected mLoop:Z

.field protected mPattern:Lcom/android/internal/hardware/ISkyLightPattern;

.field protected mPos:I

.field protected mRepeat:I

.field mSkyLight:Lcom/android/internal/hardware/SkyLighting;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyThreadHelper;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPattern:Lcom/android/internal/hardware/ISkyLightPattern;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mRepeat:I

    .line 25
    iput v1, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    .line 26
    iput-object p1, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean v1, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLoop:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/hardware/ISkyLightPattern;I)V
    .locals 1
    .parameter "context"
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyThreadHelper;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPattern:Lcom/android/internal/hardware/ISkyLightPattern;

    .line 33
    iput p3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mRepeat:I

    .line 34
    iput v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    .line 35
    iput-object p1, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mContext:Landroid/content/Context;

    .line 37
    if-gez p3, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLoop:Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLoop:Z

    goto :goto_0
.end method

.method private isEnable()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected doWork()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    iget-object v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPattern:Lcom/android/internal/hardware/ISkyLightPattern;

    invoke-interface {v3}, Lcom/android/internal/hardware/ISkyLightPattern;->getCount()I

    move-result v1

    .line 99
    .local v1, length:I
    iget v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    if-lt v3, v1, :cond_2

    .line 100
    iget v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mRepeat:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mRepeat:I

    .line 101
    iget v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mRepeat:I

    if-gtz v3, :cond_1

    .line 102
    const/4 v0, -0x1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iput v6, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPattern:Lcom/android/internal/hardware/ISkyLightPattern;

    iget v4, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    iget-object v5, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLed:[B

    invoke-interface {v3, v4, v5}, Lcom/android/internal/hardware/ISkyLightPattern;->getData(I[B)I

    move-result v0

    .line 111
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mSkyLight:Lcom/android/internal/hardware/SkyLighting;

    iget v4, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mAppId:I

    iget-object v5, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLed:[B

    aget-byte v5, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/hardware/SkyLighting;->playLed(IIB)I

    move-result v2

    .line 116
    .local v2, ret:I
    if-gez v2, :cond_3

    .line 117
    const-string v3, "SkyLightPatternPlayer"

    const-string v4, "mSkyLight.playLed() fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    iget v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    .line 121
    iget-boolean v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLoop:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    if-lt v3, v1, :cond_0

    .line 122
    iput v6, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPos:I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/android/internal/hardware/SkyLighting;

    invoke-direct {v0}, Lcom/android/internal/hardware/SkyLighting;-><init>()V

    iput-object v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mSkyLight:Lcom/android/internal/hardware/SkyLighting;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mLed:[B

    .line 58
    iget-object v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mPattern:Lcom/android/internal/hardware/ISkyLightPattern;

    invoke-interface {v0}, Lcom/android/internal/hardware/ISkyLightPattern;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mAppId:I

    .line 59
    iget-object v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mSkyLight:Lcom/android/internal/hardware/SkyLighting;

    iget v1, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/SkyLighting;->open(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "SkyLightPatternPlayer"

    const-string v1, "failed to open LED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/android/internal/hardware/SkyThreadHelper;->run()V

    .line 64
    iget-object v0, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mSkyLight:Lcom/android/internal/hardware/SkyLighting;

    iget v1, p0, Lcom/android/internal/hardware/SkyLightPatternPlayer;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/SkyLighting;->close(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "SkyLightPatternPlayer"

    const-string v1, "failed to close LED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->stopSignal()V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public work()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->doWork()I

    move-result v0

    .line 131
    .local v0, state:I
    if-gez v0, :cond_1

    .line 132
    const/4 v3, -0x1

    if-ne v3, v0, :cond_0

    .line 143
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    if-lez v0, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->enterSuspend(I)V

    move v1, v2

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/hardware/SkyLightPatternPlayer;->enterSuspend(I)V

    move v1, v2

    .line 143
    goto :goto_0
.end method
