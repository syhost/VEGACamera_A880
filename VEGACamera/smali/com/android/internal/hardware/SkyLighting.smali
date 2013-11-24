.class public final Lcom/android/internal/hardware/SkyLighting;
.super Ljava/lang/Object;
.source "SkyLighting.java"


# instance fields
.field private mSkyComplexService:Landroid/os/ISkyComplexService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;

    .line 11
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyLighting;->getSkyComplexService()Landroid/os/ISkyComplexService;

    .line 12
    return-void
.end method

.method private getSkyComplexService()Landroid/os/ISkyComplexService;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;

    if-nez v0, :cond_0

    .line 17
    :try_start_0
    const-string v0, "skycomplex"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISkyComplexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISkyComplexService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;

    return-object v0

    .line 18
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public close(I)Z
    .locals 2
    .parameter "appId"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    .line 46
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyLighting;->getSkyComplexService()Landroid/os/ISkyComplexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/ISkyComplexService;->closeLed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 50
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public open(I)Z
    .locals 2
    .parameter "appId"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;

    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 36
    :goto_0
    return v1

    .line 32
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyLighting;->getSkyComplexService()Landroid/os/ISkyComplexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/ISkyComplexService;->openLed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 36
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public playLed(IIB)I
    .locals 2
    .parameter "appId"
    .parameter "duration"
    .parameter "led"

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 59
    .local v0, iRet:I
    iget-object v1, p0, Lcom/android/internal/hardware/SkyLighting;->mSkyComplexService:Landroid/os/ISkyComplexService;

    if-nez v1, :cond_0

    .line 60
    const/4 v1, -0x1

    .line 67
    :goto_0
    return v1

    .line 63
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/hardware/SkyLighting;->getSkyComplexService()Landroid/os/ISkyComplexService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISkyComplexService;->playLed(IIB)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 67
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    goto :goto_1
.end method
