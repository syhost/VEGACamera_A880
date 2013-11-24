.class public Lcom/pantech/app/vegacamera/controller/LocationManagerController;
.super Lcom/pantech/app/vegacamera/controller/LocationManager;
.source "LocationManagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;
    }
.end annotation


# static fields
.field private static final GEOTAGGING_TIME_EXCESSIVE:I = 0x64

.field private static final GPS_TRACING_TIME:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "LocationManagerController"


# instance fields
.field private isChangedGPS:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;Lcom/pantech/app/vegacamera/controller/InformationAreaController;)V
    .locals 2
    .parameter "layout"
    .parameter "infoController"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LocationManager;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    .line 21
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 22
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->isChangedGPS:Z

    .line 26
    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/LocationManagerController;Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 51
    iput-object p2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    .line 52
    return-void
.end method

.method private _CheckEasySettingGPSProvider()Z
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, gpsEnabled:Z
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 136
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 137
    return v0
.end method

.method private _DisableEasySetting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->isChangedGPS:Z

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 153
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->isChangedGPS:Z

    .line 155
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private _EnableEasySetting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_CheckEasySettingGPSProvider()Z

    move-result v0

    .line 142
    .local v0, currentState:Z
    if-nez v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 145
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->isChangedGPS:Z

    .line 147
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private _LocSetState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->_GpsIndicator(I)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->setLocMGRState(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_DisableEasySetting()V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/LocationManagerController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)Lcom/pantech/app/vegacamera/controller/LayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    return-object v0
.end method


# virtual methods
.method public GeoTagPopupStartGps()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 102
    const-string v1, "LocationManagerController"

    const-string v2, "[LocationManagerController] restart GPS Tracing, chagne camera configuration of GPS value"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_EnableEasySetting()V

    .line 104
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_StartReceivingLocationUpdates()V

    .line 105
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V

    .line 106
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->ResetLastLocation()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Release()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    .line 95
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->Release()V

    .line 96
    return-void
.end method

.method public Start()V
    .locals 6

    .prologue
    .line 55
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_gps_info"

    .line 56
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_gps_info_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, str:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_EnableEasySetting()V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_StartReceivingLocationUpdates()V

    .line 64
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V

    .line 76
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 60
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->ResetLastLocation()V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0           #i:I
    :cond_2
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_StopReceivingLocationUpdates()V

    .line 68
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_DisableEasySetting()V

    .line 69
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 72
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLocationListeners:[Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->ResetLastLocation()V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public Stop()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 79
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_gps_info"

    .line 80
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_gps_info_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_StopReceivingLocationUpdates()V

    .line 85
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_DisableEasySetting()V

    .line 86
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->Release()V

    .line 89
    :cond_0
    return-void
.end method

.method protected _ShowGpsOnScreenIndicator(Z)V
    .locals 4
    .parameter "hasSignal"

    .prologue
    .line 112
    const-string v1, "LocationManagerController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[LocationManagerController] _ShowGpsOnScreenIndicator("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    if-eqz p1, :cond_1

    .line 116
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->UsedInformationArea()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_LAYOUT_INFORMATION_AREA:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, vInfoArea:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mInfoController:Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;->SetVisibility(I)V

    .line 131
    .end local v0           #vInfoArea:Landroid/view/View;
    :cond_0
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V

    .line 119
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_StopReceivingLocationUpdates()V

    .line 120
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_DisableEasySetting()V

    goto :goto_0
.end method
