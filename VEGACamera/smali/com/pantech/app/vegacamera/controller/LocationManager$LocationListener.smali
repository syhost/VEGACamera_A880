.class public Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LocationManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z

    .line 77
    iput-object p2, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 79
    return-void
.end method


# virtual methods
.method public Current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ResetLastLocation()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 142
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 84
    const-string v0, "LocationManager"

    const-string v1, "[LocationManager]]onLocationChanged[1]"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 87
    const-string v0, "LocationManager"

    const-string v1, "[LocationManager]] onLocationChanged[1-1]"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 94
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/controller/LocationManager;->_ShowGpsOnScreenIndicator(Z)V

    .line 96
    const-string v0, "LocationManager"

    const-string v1, "Got First Location."

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->SetLocation(Landroid/location/Location;)V

    .line 101
    const-string v0, "LocationManager"

    const-string v1, "[********<GPS>***************************************"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    GPS Latitude is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    GPS Longitude is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "LocationManager"

    const-string v1, "[*************************************<GPS>**********"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->_StopReceivingLocationUpdates()V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z

    .line 117
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 112
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v2, 0x0

    .line 121
    packed-switch p2, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    const-string v0, "LocationManager"

    const-string v1, "GPS, onStatusChanged : OUT_OF_SERVICE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->mValid:Z

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManager;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManager;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManager;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManager$LocationListener;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManager;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/LocationManager;->_ShowGpsOnScreenIndicator(Z)V

    goto :goto_0

    .line 134
    :pswitch_1
    const-string v0, "LocationManager"

    const-string v1, "GPS, onStatusChanged : AVAILABLE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
