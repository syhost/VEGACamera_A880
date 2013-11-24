.class public Lcom/pantech/app/vegacamera/self/SelfShotHelper;
.super Ljava/lang/Object;
.source "SelfShotHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/self/SelfShotHelper$IFaceDetection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "selfmode"

.field private static skyCamera_faces:[Landroid/hardware/Camera$Face;


# instance fields
.field private Face_newNum:I

.field private Face_oldNum:I

.field mContext:Landroid/content/Context;

.field private mSelfHandler:Landroid/os/Handler;

.field private mSelfHandlerRunnable:Ljava/lang/Runnable;

.field miFaceDetection:Lcom/pantech/app/vegacamera/self/SelfShotHelper$IFaceDetection;

.field private selfshotSound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->skyCamera_faces:[Landroid/hardware/Camera$Face;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->selfcamera_out:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/pantech/app/vegacamera/R$raw;->selfcamera_1p:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/pantech/app/vegacamera/R$raw;->selfcamera_2p:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->selfshotSound:[I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/self/SelfShotHelper$1;-><init>(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandlerRunnable:Ljava/lang/Runnable;

    .line 25
    iput v3, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I

    .line 26
    iput v3, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_oldNum:I

    .line 27
    iput-object p1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->getFaceNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/self/SelfShotHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_newNum:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_oldNum:I

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/self/SelfShotHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->Face_oldNum:I

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/self/SelfShotHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandlerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getFaceNum()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->skyCamera_faces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->skyCamera_faces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method endSelfshotMode()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "selfmode"

    const-string v1, "endSelfshotMode()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method

.method public getFaceScore()[Landroid/hardware/Camera$Face;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->skyCamera_faces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->skyCamera_faces:[Landroid/hardware/Camera$Face;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 74
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "faces"

    .prologue
    .line 90
    sput-object p1, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->skyCamera_faces:[Landroid/hardware/Camera$Face;

    .line 91
    return-void
.end method

.method public setOnFaceDetection(Lcom/pantech/app/vegacamera/self/SelfShotHelper$IFaceDetection;)V
    .locals 0
    .parameter "iFaceDetection"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->miFaceDetection:Lcom/pantech/app/vegacamera/self/SelfShotHelper$IFaceDetection;

    .line 35
    return-void
.end method

.method public soundPlaySelfShot(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 38
    const-string v0, "selfmode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SelfShotHelper] soundPlaySelfShot() Number is  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->selfshotSound:[I

    aget v1, v1, p1

    invoke-static {v0, v1, p0}, Lcom/pantech/app/vegacamera/util/Util;->SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 40
    return-void
.end method

.method startSelfshotMode()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "selfmode"

    const-string v1, "startSelfshotMode()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/self/SelfShotHelper;->mSelfHandlerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_0
    return-void
.end method
