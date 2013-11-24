.class public Lcom/pantech/app/vegacamera/pst/PstCamera;
.super Landroid/content/BroadcastReceiver;
.source "PstCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PstCamera"


# instance fields
.field final PSTINTENT2:Ljava/lang/String;

.field private mFlash:Ljava/lang/String;

.field private mPrefLocal:Landroid/content/SharedPreferences;

.field private mShutterSound:Ljava/lang/String;

.field private mSize:Ljava/lang/String;

.field private mWhiteBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "android.intent.action.PSTCAMERA2"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->PSTINTENT2:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 22
    .local v8, myExtras:Landroid/os/Bundle;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 23
    .local v6, isOK:Ljava/lang/Boolean;
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] myExtras :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.PSTCAMERA2"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v9, result:Landroid/content/Intent;
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, mode:Ljava/lang/String;
    const-string v0, "readPST"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/pst/PstCamera;->readSize_PST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/pst/PstCamera;->readShutterSound_PST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/pst/PstCamera;->readWB_PST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/pst/PstCamera;->readFlash_PST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    .line 34
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] readString size ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] readString ShutterSound ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] readString WB ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] readString Flash ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "size"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v0, "shuttersound"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v0, "wb"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v0, "flash"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "writePST"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    .line 47
    const-string v0, "shuttersound"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    .line 48
    const-string v0, "wb"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    .line 49
    const-string v0, "flash"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    .line 51
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] myExtras.getString size ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] myExtras.getString shuttersound ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] myExtras.getString WB ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] myExtras.getString flash ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/pst/PstCamera;->write_PST(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 57
    const-string v0, "PstCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PSTCamera] Write all PST values :: isOK = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected readFlash_PST(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, PSTValue:Ljava/lang/String;
    const-string v2, "PstCamera"

    const-string v3, "[PSTCamera] read_PST"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 104
    .local v1, prefName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 106
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_flash_mode_camera"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method protected readShutterSound_PST(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, PSTValue:Ljava/lang/String;
    const-string v2, "PstCamera"

    const-string v3, "[PSTCamera] read_PST"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 91
    .local v1, prefName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 93
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_setting_shutter_sound"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method protected readSize_PST(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, PSTValue:Ljava/lang/String;
    const-string v2, "PstCamera"

    const-string v3, "[PSTCamera] read_PST"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 66
    .local v1, prefName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 68
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_setting_picture_size"

    const-string v4, "2560x1920"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method protected readWB_PST(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, PSTValue:Ljava/lang/String;
    const-string v2, "PstCamera"

    const-string v3, "[PSTCamera] read_PST"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 78
    .local v1, prefName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 80
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    const-string v3, "pref_setting_wb"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method protected write_PST(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "PSTValue"

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 118
    .local v1, prefName:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 121
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    const-string v2, "pref_setting_picture_size"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected write_PST(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "size"
    .parameter "shutersound"
    .parameter "wb"
    .parameter "flash"

    .prologue
    const/4 v2, 0x0

    .line 132
    const-string v1, "com.pantech.app.vegacamera_preferences_0"

    .line 133
    .local v1, prefName:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_4

    .line 137
    iget-object v2, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    if-eqz p2, :cond_0

    .line 139
    const-string v2, "pref_setting_picture_size"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v2, "PstCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[PSTCamera] write size done ::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    if-eqz p3, :cond_1

    .line 143
    const-string v2, "pref_setting_shutter_sound"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v2, "PstCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[PSTCamera] write shuttersound done ::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    if-eqz p4, :cond_2

    .line 147
    const-string v2, "pref_setting_wb"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v2, "PstCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[PSTCamera] write WB done ::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    if-eqz p5, :cond_3

    .line 151
    const-string v2, "pref_flash_mode_camera"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v2, "PstCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[PSTCamera] write flash done ::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/pst/PstCamera;->mFlash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    const/4 v2, 0x1

    :cond_4
    return v2
.end method
