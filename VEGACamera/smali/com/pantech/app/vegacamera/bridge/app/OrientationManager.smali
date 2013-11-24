.class public Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;,
        Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OrientationManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private mRotationLockedSetting:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    .line 48
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationLocked:Z

    .line 53
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    .line 57
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mRotationLockedSetting:Z

    .line 60
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationListener:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$1(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->updateCompensation()V

    return-void
.end method

.method private disableCompensation()V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    .line 189
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->notifyListeners()V

    .line 191
    :cond_0
    return-void
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 249
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    return v1

    .line 253
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 255
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 257
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 194
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 194
    monitor-exit v3

    .line 199
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;->onOrientationCompensationChanged()V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 241
    :goto_0
    if-eqz v0, :cond_0

    .line 242
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 244
    .end local p1
    :cond_0
    return p1

    .line 237
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 238
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 239
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCompensation()V
    .locals 3

    .prologue
    .line 156
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 162
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 165
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    .line 166
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->notifyListeners()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1

    .line 79
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationLocked:Z

    .line 101
    const-string v0, "OrientationManager"

    const-string v1, "lock orientation true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 134
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->updateCompensation()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationListener:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;->disable()V

    .line 73
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, orientation:I
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 174
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v2, v0

    rem-int/lit16 v1, v2, 0x168

    .line 176
    .local v1, orientationCompensation:I
    const-string v2, "OrientationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refresh orientationCompensation:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = mOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    const-string v4, " + getDisplayRotation(mActivity):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    .line 180
    const-string v2, "OrientationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refresh mOrientationCompensation:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationCompensation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->notifyListeners()V

    .line 183
    return-void
.end method

.method public removeListener(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mRotationLockedSetting:Z

    .line 68
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationListener:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$MyOrientationEventListener;->enable()V

    .line 69
    return-void

    :cond_0
    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 264
    return-void
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mRotationLockedSetting:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->mOrientationLocked:Z

    .line 145
    const-string v0, "OrientationManager"

    const-string v1, "unlock orientation"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->disableCompensation()V

    goto :goto_0
.end method
