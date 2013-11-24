.class public Lcom/pantech/app/vegacamera/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_LID_STATE:Ljava/lang/String; = "android.intent.action.LID_STATE"

.field private static final EXTRA_LID_STATE:Ljava/lang/String; = "value"

.field private static final SMART_COVER_CLOSE:Z = false

.field private static final SMART_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "BroadcastManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    .line 81
    new-instance v0, Lcom/pantech/app/vegacamera/BroadcastManager$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/BroadcastManager$1;-><init>(Lcom/pantech/app/vegacamera/BroadcastManager;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object p1, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    return-object v0
.end method


# virtual methods
.method public Release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    iput-object v2, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object v2, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    .line 52
    return-void
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/BroadcastManager$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    .line 79
    return-void
.end method

.method public Start()V
    .locals 8

    .prologue
    .line 30
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, callIntentFilter:Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, batteryIntentFilter:Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, audioIntentFilter:Landroid/content/IntentFilter;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .local v5, mediaIntentFilter:Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .local v3, headsetIntentFilter:Landroid/content/IntentFilter;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LID_STATE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, lidIntentFileter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v6, "file"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 40
    iget-object v6, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    iget-object v6, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    iget-object v6, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    iget-object v6, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    iget-object v6, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    iget-object v6, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/BroadcastManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method
