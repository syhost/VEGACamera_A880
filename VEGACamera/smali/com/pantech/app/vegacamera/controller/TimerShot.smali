.class public Lcom/pantech/app/vegacamera/controller/TimerShot;
.super Ljava/lang/Object;
.source "TimerShot.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;,
        Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;,
        Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;,
        Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;
    }
.end annotation


# static fields
.field private static final HANDLE_SHUTTER_TIMER_SHOT_START:I = 0x2

.field private static final HANDLE_TIMER_SHOT_END:I = 0x1

.field private static final HANDLE_TIMER_SHOT_START:I = 0x0

.field private static final TIMER_SHOT_TIME:I = 0x3e8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bShutterTimerShot:Z

.field private iTimerCount:I

.field private iTimerDelay:I

.field private mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

.field private mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

.field private mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

.field private mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

.field private mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private sTimerShot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 3
    .parameter "layout"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "TimerShot"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->TAG:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 33
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    .line 34
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 36
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->bShutterTimerShot:Z

    .line 38
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I

    .line 39
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I

    .line 42
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    .line 46
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;-><init>(Lcom/pantech/app/vegacamera/controller/TimerShot;Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    .line 51
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    .line 52
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    .line 53
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 54
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    .line 65
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->timer_count_icon:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 70
    :cond_0
    return-void
.end method

.method private _SetCameraLight(ZII)V
    .locals 2
    .parameter "fOn"
    .parameter "tOn"
    .parameter "tOff"

    .prologue
    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerManager;->setCameraLight(ZII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private _SetShutterTouchListener(Z)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 522
    :cond_0
    if-eqz p1, :cond_2

    .line 523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    if-nez v0, :cond_1

    .line 524
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;-><init>(Lcom/pantech/app/vegacamera/controller/TimerShot;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 529
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    goto :goto_0
.end method

.method private _TimerShotDisplayCount(I)V
    .locals 9
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 198
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_setting_timershot"

    .line 199
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v7, Lcom/pantech/app/vegacamera/R$string;->pref_setting_timershot_default:I

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    .line 201
    const-string v4, "TimerShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TimerShot] timer count is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, arrayid:I
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->bShutterTimerShot:Z

    if-nez v4, :cond_4

    .line 210
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v5, "3Sec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    sget v1, Lcom/pantech/app/vegacamera/R$array;->camera_timershot_3sec_icons:I

    .line 270
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 271
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 273
    .local v0, array:Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-le v4, p1, :cond_5

    .line 278
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 283
    :goto_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v4, v8}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 285
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v1           #arrayid:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 219
    .restart local v1       #arrayid:I
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v5, "5Sec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    sget v1, Lcom/pantech/app/vegacamera/R$array;->camera_timershot_5sec_icons:I

    .line 228
    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v5, "10Sec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    sget v1, Lcom/pantech/app/vegacamera/R$array;->camera_timershot_10sec_icons:I

    .line 238
    goto :goto_0

    .line 239
    :cond_4
    sget v1, Lcom/pantech/app/vegacamera/R$array;->camera_timershot_10sec_icons:I

    .line 240
    if-lez p1, :cond_0

    .line 241
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 274
    .restart local v0       #array:Landroid/content/res/TypedArray;
    .restart local v3       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 275
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "TimerShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "err timer count obtainTypedArray "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const-string v4, "TimerShot"

    const-string v5, "err display timer count cancel timer"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;->OnTimerShotCancel(Z)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterButton;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterTimer;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_TimerShotDisplayCount(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/TimerShot;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetCameraLight(ZII)V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/controller/TimerShot;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/controller/TimerShot;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I

    return v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I

    return-void
.end method


# virtual methods
.method public AvailableTimerShot()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_timershot"

    .line 318
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_timershot_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    .line 319
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "TimerShot"

    const-string v3, "[TimerShot] unavailabe timer shot :: is timer shot off value"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->bShutterTimerShot:Z

    if-nez v2, :cond_2

    .line 331
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_0

    .line 330
    :cond_2
    const-string v0, "TimerShot"

    const-string v2, "[TimerShot] availabe timer shot"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 331
    goto :goto_0
.end method

.method public DisplayTimerShotEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "TimerShot"

    const-string v1, "[TimerShot] CameraDisplayTimerShotEnd"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 292
    :cond_0
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I

    .line 293
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I

    .line 295
    return-void
.end method

.method public GetIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    return-object v0
.end method

.method public InitializeShutterButtonTimer(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 382
    const-string v0, "TimerShot"

    const-string v1, "InitializeShutterButtonTimer()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-direct {v0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    .line 385
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->Init()V

    .line 386
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->SetOnTimerActionListener(Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 391
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 392
    return-void
.end method

.method public IsShutterTimerActionStarted()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->IsTimerActionStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public OnFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    const-string v0, "TimerShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TimerShot] OnFullScreenChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shutteractionstart cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->TimerShotCancel()V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    :cond_2
    const-string v0, "TimerShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TimerShot] OnFullScreenChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timerstart cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->TimerShotCancel()V

    goto :goto_0
.end method

.method public OnSetTimerCount(I)V
    .locals 3
    .parameter "timerCount"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, "TimerShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnSetTimerCount "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetBackgroundResource(I)V

    goto :goto_0
.end method

.method public OnTimerActionCancel(Z)V
    .locals 4
    .parameter "ended"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    const-string v0, "TimerShot"

    const-string v1, "OnTimerActionCancel()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetShutterTimerActionStarted(Z)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    if-nez v0, :cond_1

    .line 423
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetShutterTimerShotMode(Z)V

    .line 416
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;->OnShutterButtonMove(Z)V

    .line 417
    if-nez p1, :cond_2

    .line 419
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;->OnShutterTimerActionCanceled()V

    .line 421
    :cond_2
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 422
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTouchListener:Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;

    #setter for: Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;Z)V

    goto :goto_0
.end method

.method public OnTimerActionStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 396
    const-string v0, "TimerShot"

    const-string v1, "OnTimerActionStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->SetShutterTimerShotMode(Z)V

    .line 401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;->OnShutterButtonMove(Z)V

    goto :goto_0
.end method

.method public OnTimerAnimationStart(I)V
    .locals 2
    .parameter "timerCount"

    .prologue
    .line 427
    const-string v0, "TimerShot"

    const-string v1, "OnTimerAnimationStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 432
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;->OnShutterButtonTimerShot(ZI)V

    goto :goto_0
.end method

.method public OnTimerAnimationStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    const-string v0, "TimerShot"

    const-string v1, "OnTimerAnimationStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    invoke-interface {v0, v2, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;->OnShutterButtonTimerShot(ZI)V

    goto :goto_0
.end method

.method public OnTimerNotOperated()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public Release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->TimerShotCancel()V

    .line 181
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 183
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mPowerManager:Landroid/os/PowerManager;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    if-eqz v0, :cond_2

    .line 186
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    .line 188
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->Release()V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->SetOnTimerActionListener(Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;)V

    .line 192
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    .line 194
    :cond_3
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 195
    return-void
.end method

.method public SetBackgroundResource(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 361
    :cond_0
    if-nez p1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->DisplayTimerShotEnd()V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_TimerShotDisplayCount(I)V

    goto :goto_0
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    .line 138
    return-void
.end method

.method public SetOnShutterButtonMoveListener(Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mMoveListener:Lcom/pantech/app/vegacamera/controller/TimerShot$OnShutterButtonMoveListener;

    .line 374
    if-nez p1, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    goto :goto_0
.end method

.method public SetShutterTimerShotMode(Z)V
    .locals 3
    .parameter "shutterTimerShot"

    .prologue
    .line 349
    const-string v0, "TimerShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setShutterTimerShotMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->bShutterTimerShot:Z

    .line 351
    return-void
.end method

.method public SetTimerCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 354
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I

    .line 355
    return-void
.end method

.method public SetVisibility(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mTimerIcon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public Start()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, started:Z
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 147
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->bShutterTimerShot:Z

    if-nez v2, :cond_6

    .line 148
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v4, "Off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const-string v2, "TimerShot"

    const-string v3, "[TimerShot] unavailabe timer shot :: is timer shot off value"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 166
    .end local v0           #started:Z
    .local v1, started:I
    :goto_0
    return v1

    .line 152
    .end local v1           #started:I
    .restart local v0       #started:Z
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v4, "3Sec"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    :goto_1
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I

    .line 154
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessage(I)Z

    .line 155
    const/4 v0, 0x1

    .line 162
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 165
    :cond_2
    const-string v2, "TimerShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TimerShot] timer delay is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 166
    .restart local v1       #started:I
    goto :goto_0

    .line 152
    .end local v1           #started:I
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v4, "5Sec"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->sTimerShot:Ljava/lang/String;

    const-string v4, "10Sec"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_1

    .line 158
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessage(I)Z

    .line 159
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public TimerShotCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    const-string v0, "TimerShot"

    const-string v1, "[TimerShot] cancelTimerShot()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->DisplayTimerShotEnd()V

    .line 300
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->removeMessages(I)V

    .line 304
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->SoundPoolRelease()V

    .line 306
    :cond_0
    invoke-direct {p0, v3, v2, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetCameraLight(ZII)V

    .line 307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V

    .line 309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;->OnTimerShotCancel(Z)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->IsTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->CancelShutterTimer()V

    .line 314
    :cond_2
    return-void
.end method
