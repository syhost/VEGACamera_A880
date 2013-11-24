.class public Lcom/pantech/app/vegacamera/BootBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcast.java"


# static fields
.field public static final BOOTCAMCODER:Ljava/lang/String; = "BootBroadcast"

.field public static final KEY_ALARMVOLUME:Ljava/lang/String; = "ALARM_VOLUME"

.field public static final KEY_MUSICVOLUME:Ljava/lang/String; = "MUSIC_VOLUME"

.field public static final KEY_NOTIVIBRATE:Ljava/lang/String; = "NOTI_VIBRATE"

.field public static final KEY_NOTIVOLUME:Ljava/lang/String; = "NOTI_VOLUME"

.field public static final KEY_ORIGINAL_LEVEL:I = 0x0

.field public static final KEY_RINGVIBRATE:Ljava/lang/String; = "RING_VIBRATE"

.field public static final KEY_RINGVOLUME:Ljava/lang/String; = "RING_VOLUME"

.field public static final KEY_VOLUMESTATE:Ljava/lang/String; = "VOLUME_STATE"

.field public static final VOLUME_RECORDING_LEVEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 25
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "BootBroadcast.onReceive() :::::::::::::::: Intent.ACTION_BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    const-string v2, "BootBroadcast"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    .local v1, mSPref:Landroid/content/SharedPreferences;
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 31
    .local v0, audio:Landroid/media/AudioManager;
    const-string v2, "VOLUME_STATE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "RING_VOLUME"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 32
    invoke-virtual {v0, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 35
    const-string v2, "ALARM_VOLUME"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 34
    invoke-virtual {v0, v7, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 37
    const-string v2, "MUSIC_VOLUME"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 36
    invoke-virtual {v0, v6, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 39
    const-string v2, "NOTI_VOLUME"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 38
    invoke-virtual {v0, v8, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 47
    .end local v0           #audio:Landroid/media/AudioManager;
    .end local v1           #mSPref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
