.class public Lcom/pantech/app/vegacamera/util/StorageFactory;
.super Lcom/pantech/app/vegacamera/util/Storage;
.source "StorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/util/StorageFactory$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageFactory "

.field private static mActivity:Landroid/app/Activity;

.field private static volatile mStorageFactory:Lcom/pantech/app/vegacamera/util/StorageFactory;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/util/Storage;-><init>()V

    .line 15
    new-instance v0, Lcom/pantech/app/vegacamera/util/StorageFactory$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/util/StorageFactory$MainHandler;-><init>(Lcom/pantech/app/vegacamera/util/StorageFactory;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mMainHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public static GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mStorageFactory:Lcom/pantech/app/vegacamera/util/StorageFactory;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-class v1, Lcom/pantech/app/vegacamera/util/StorageFactory;

    monitor-enter v1

    .line 25
    :try_start_0
    new-instance v0, Lcom/pantech/app/vegacamera/util/StorageFactory;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mStorageFactory:Lcom/pantech/app/vegacamera/util/StorageFactory;

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mStorageFactory:Lcom/pantech/app/vegacamera/util/StorageFactory;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 111
    const-string v0, "StorageFactory "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " _ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public ShowDisableToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_ext:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_int:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getRemainStorageState()Z
    .locals 5

    .prologue
    .line 61
    const/4 v0, 0x1

    .line 62
    .local v0, bResult:Z
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetAvailableStorage(Z)J

    move-result-wide v1

    .line 63
    .local v1, mPicturesRemaining:J
    const-wide/32 v3, 0x1e00000

    sub-long/2addr v1, v3

    .line 65
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternMemoryLocation()Z
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 32
    sput-object p1, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method public updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 4
    .parameter "appdata"

    .prologue
    const/4 v3, 0x0

    .line 75
    sget-object v1, Lcom/pantech/app/vegacamera/util/StorageFactory;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatusANDChLoc(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v0

    .line 76
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    goto :goto_0

    .line 85
    :pswitch_2
    const/16 v1, 0x6b

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/vegacamera/util/StorageFactory;->_ShowErrorAndFinish(II)V

    goto :goto_0

    .line 89
    :pswitch_3
    const/16 v1, 0x6a

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/vegacamera/util/StorageFactory;->_ShowErrorAndFinish(II)V

    goto :goto_0

    .line 93
    :pswitch_4
    const/16 v1, 0x6c

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/vegacamera/util/StorageFactory;->_ShowErrorAndFinish(II)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
