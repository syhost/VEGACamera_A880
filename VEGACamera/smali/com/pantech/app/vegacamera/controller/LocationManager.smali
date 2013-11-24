.class public Lcom/pantech/app/vegacamera/controller/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    const/4 v1, 0x0

    .line 19
    new-instance v2, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;-><init>(Lcom/pantech/app/vegacamera/controller/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 20
    new-instance v2, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;-><init>(Lcom/pantech/app/vegacamera/controller/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    .line 23
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    return-object v0
.end method


# virtual methods
.method public Release()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 158
    return-void
.end method

.method protected _ShowGpsOnScreenIndicator(Z)V
    .locals 0
    .parameter "hasSignal"

    .prologue
    .line 151
    return-void
.end method

.method protected _StartReceivingLocationUpdates()V
    .locals 9

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 33
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    .line 32
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 41
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 47
    :goto_1
    const-string v0, "LocationManager"

    const-string v1, "[LocationManager] StartReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    array-length v0, v0

    if-lt v7, v0, :cond_2

    .line 56
    return-void

    .line 34
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 35
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "[LocationManager] fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 36
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 37
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LocationManager] provider does not exist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 43
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "[LocationManager] fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 44
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 45
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LocationManager] provider does not exist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v7       #i:I
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 49
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 52
    :catch_4
    move-exception v6

    .line 53
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "LocationManager"

    const-string v1, "[LocationManager] fail to remove location listners, ignore"

    invoke-static {v0, v1, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected _StopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 60
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 67
    const-string v2, "LocationManager"

    const-string v3, "[LocationManager] StopReceivingLocationUpdates"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v1           #i:I
    :cond_0
    return-void

    .line 62
    .restart local v1       #i:I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocationManager;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocationManager"

    const-string v3, "[LocationManager] fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
