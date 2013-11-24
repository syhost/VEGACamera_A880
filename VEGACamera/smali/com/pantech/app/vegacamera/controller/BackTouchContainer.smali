.class public Lcom/pantech/app/vegacamera/controller/BackTouchContainer;
.super Ljava/lang/Object;
.source "BackTouchContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackTouchContainer"

.field private static mNavimode:I


# instance fields
.field private mFingerHandler:Lcom/crucialtec/biometric/FingerprintHandler;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListener:Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mNavimode:I

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 1
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 15
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mListener:Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;

    .line 21
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 22
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->_SetBackTouchCallback()V

    .line 23
    return-void
.end method

.method private IsVtouchCameraOn()Z
    .locals 5

    .prologue
    .line 107
    const/4 v1, -0x1

    .line 110
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rear_touch_camera"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    const-string v2, "BackTouchContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsVtouchCameraOn() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-nez v1, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 120
    :goto_1
    return v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private IsVtouchOn()Z
    .locals 3

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler;

    invoke-direct {v0}, Lcom/crucialtec/biometric/FingerprintHandler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mFingerHandler:Lcom/crucialtec/biometric/FingerprintHandler;

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mFingerHandler:Lcom/crucialtec/biometric/FingerprintHandler;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/crucialtec/biometric/FingerprintHandler;->currentNaviMode()I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mNavimode:I

    .line 130
    const-string v0, "BackTouchContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IsVtouchOn() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mNavimode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    sget v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mNavimode:I

    if-nez v0, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private _SetBackTouchCallback()V
    .locals 4

    .prologue
    .line 34
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 37
    .local v1, w:Landroid/view/Window;
    :try_start_0
    new-instance v2, Lcom/pantech/app/vegacamera/controller/BackTouchContainer$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer$1;-><init>(Lcom/pantech/app/vegacamera/controller/BackTouchContainer;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setRearCallback(Landroid/view/Window$RearCallback;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const-string v2, "BackTouchContainer"

    const-string v3, "[BackTouchCamera] setBackTouchCallback(NoClassDefFound)"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/BackTouchContainer;)Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mListener:Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;

    return-object v0
.end method


# virtual methods
.method protected IsAvailableVCapture()Z
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->IsVtouchCameraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->IsVtouchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "BackTouchContainer"

    const-string v1, "IsAvailableVCapture(touch) true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 150
    :cond_0
    const-string v0, "BackTouchContainer"

    const-string v1, "IsAvailableVCapture(touch) false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Release()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 104
    return-void
.end method

.method public SetOnBackTouchListener(Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->mListener:Lcom/pantech/app/vegacamera/controller/BackTouchContainer$BackTouchListener;

    .line 31
    return-void
.end method
