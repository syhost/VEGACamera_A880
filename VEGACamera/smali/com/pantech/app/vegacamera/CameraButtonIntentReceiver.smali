.class public Lcom/pantech/app/vegacamera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 24
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.dmb.exitcommand"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v5, pauseDmb:Landroid/content/Intent;
    const-string v8, "command"

    const-string v9, "pause"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v8

    and-int/lit8 v4, v8, 0xf

    .line 29
    .local v4, isRunning:I
    if-eqz v4, :cond_1

    .line 30
    const-string v8, "CameraButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "camera cannot open. isRunning "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/16 v8, 0x70

    invoke-static {p1, v8, v11}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 32
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 33
    invoke-static {v11}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v2

    .line 40
    .local v2, holder:Lcom/pantech/app/vegacamera/CameraHolder;
    new-instance v6, Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-direct {v6, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 41
    .local v6, pref:Lcom/pantech/app/vegacamera/preference/ComboPreferences;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 43
    .local v0, cameraId:I
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/CameraHolder;->tryOpen(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    if-eqz v8, :cond_0

    .line 59
    :goto_1
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->keep()V

    .line 60
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 62
    const-string v8, "screen-off"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 64
    .local v7, screenOff:Z
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, i:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #i:Landroid/content/Intent;
    const-string v8, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v3       #i:Landroid/content/Intent;
    const-class v8, Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v3, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    const/high16 v8, 0x1400

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v8, "screen-off"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    .end local v3           #i:Landroid/content/Intent;
    .end local v7           #screenOff:Z
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v8, "CameraButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "camera hardware exception "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/16 v8, 0x65

    invoke-static {p1, v8, v11}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 49
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-static {v11}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    goto :goto_0

    .line 53
    .end local v1           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v8, "CameraButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "camera app crash exception "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
