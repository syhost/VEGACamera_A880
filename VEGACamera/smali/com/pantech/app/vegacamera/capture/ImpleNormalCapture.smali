.class public Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;
.super Ljava/lang/Object;
.source "ImpleNormalCapture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$SaveRequest;,
        Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;
    }
.end annotation


# static fields
.field private static final RESTART_CAPTURE:I = 0x2

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final SNAPSHOT_COMPLETE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImpleNormalCapture"

.field private static final UPDATE_THUMBNAIL:I = 0x3


# instance fields
.field private final ZSL_LONG_CAPTURE_MAX:I

.field private bCancel:Z

.field private bCapture:Z

.field private bLongCapture:Z

.field private bLongCaptureFinished:Z

.field private iCurrentCaptureCount:I

.field private iJpegRotation:I

.field private iWhat:I

.field private lCaptureStartTime:J

.field private lJpegCallbackFinishTime:J

.field private lJpegPictureCallbackTime:J

.field private lPictureDisplayedToJpegCallbackTime:J

.field private lPostViewPictureCallbackTime:J

.field private lRawPictureCallbackTime:J

.field private lShutterCallbackTime:J

.field private lShutterLag:J

.field private mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

.field private mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

.field private mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

.field private mPhoto:Lcom/pantech/app/vegacamera/Photo;

.field private final mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;

.field private final mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;

.field private final mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V
    .locals 5
    .parameter "act"
    .parameter "photo"
    .parameter "data"
    .parameter "what"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 37
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 38
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 42
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    .line 43
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    .line 45
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z

    .line 46
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCapture:Z

    .line 48
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I

    .line 49
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    .line 51
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterCallbackTime:J

    .line 52
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J

    .line 53
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lRawPictureCallbackTime:J

    .line 54
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J

    .line 55
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterLag:J

    .line 56
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPictureDisplayedToJpegCallbackTime:J

    .line 57
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegCallbackFinishTime:J

    .line 58
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J

    .line 60
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;

    .line 61
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;

    .line 64
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$MainHandler;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->ZSL_LONG_CAPTURE_MAX:I

    .line 69
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iCurrentCaptureCount:I

    .line 70
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCapture:Z

    .line 71
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z

    .line 107
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 108
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 109
    iput-object p3, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 110
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    .line 111
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    .line 112
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    .line 113
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCapture:Z

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/Photo;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterLag:J

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterLag:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lRawPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCapture:Z

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z

    return v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-void
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I

    return v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegCallbackFinishTime:J

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lJpegCallbackFinishTime:J

    return-wide v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCapture:Z

    return v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iCurrentCaptureCount:I

    return v0
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iCurrentCaptureCount:I

    return-void
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z

    return-void
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterCallbackTime:J

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J

    return-wide v0
.end method

.method private getCameraRotation()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method


# virtual methods
.method protected OnPicutreTakenDonePerformTest()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public ReCapture()V
    .locals 9

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J

    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v7

    .line 159
    .local v7, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;

    .line 162
    new-instance v4, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;

    invoke-direct {v4, p0, v7}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Landroid/location/Location;)V

    .line 161
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 164
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->onCaptureAnimation()V

    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 167
    .local v8, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    goto :goto_0
.end method

.method protected StoreDonePerformTest()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method protected StoreStartPerformTest()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method protected TakePictureStartPerformTest()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public onCapture()V
    .locals 9

    .prologue
    const/4 v3, 0x3

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z

    .line 122
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCapture:Z

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCapture:Z

    .line 130
    const-string v0, "ImpleNormalCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapture iWhat  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lPostViewPictureCallbackTime:J

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v7

    .line 138
    .local v7, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$RawPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$PostViewPictureCallback;

    .line 141
    new-instance v4, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;

    invoke-direct {v4, p0, v7}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;Landroid/location/Location;)V

    .line 140
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->onCaptureAnimation()V

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 146
    .local v8, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->lCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    goto/16 :goto_0
.end method

.method public onCaptureAnimation()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 178
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;->finish()V

    .line 349
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageSaver;

    .line 350
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;->finish()V

    .line 351
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture$ImageNamer;

    .line 353
    :cond_1
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 354
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 355
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 356
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 357
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bCancel:Z

    .line 640
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z

    .line 641
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    .line 642
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 3
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 652
    iput p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    .line 653
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iWhat:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCapture:Z

    .line 655
    iput v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->iCurrentCaptureCount:I

    .line 656
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCaptureFinished:Z

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->bLongCapture:Z

    goto :goto_0
.end method

.method public setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 648
    return-void
.end method
