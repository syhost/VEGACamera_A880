.class public Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;
.super Ljava/lang/Object;
.source "ImpleBeautyCapture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$CapturedCallbacks;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$EnhanceAndSaveTask;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;,
        Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;
    }
.end annotation


# static fields
.field private static final RESTART_CAPTURE:I = 0x2

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NormalCapture"

.field private static final UPDATE_THUMBNAIL:I = 0x3


# instance fields
.field SKIN_SMOOTHING_STRENGTH:I

.field SKIN_TONE_ADJUSTMENT_VALUE:I

.field private bCancel:Z

.field private bCapture:Z

.field beautyFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;"
        }
    .end annotation
.end field

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

.field private mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

.field private mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

.field private mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

.field private mPhoto:Lcom/pantech/app/vegacamera/Photo;

.field private final mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;

.field private final mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;

.field private final mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V
    .locals 4
    .parameter "act"
    .parameter "photo"
    .parameter "data"
    .parameter "what"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 38
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 39
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 43
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    .line 44
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    .line 46
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z

    .line 47
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCapture:Z

    .line 49
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iJpegRotation:I

    .line 50
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I

    .line 52
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lShutterCallbackTime:J

    .line 53
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPostViewPictureCallbackTime:J

    .line 54
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lRawPictureCallbackTime:J

    .line 55
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J

    .line 56
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lShutterLag:J

    .line 57
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPictureDisplayedToJpegCallbackTime:J

    .line 58
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegCallbackFinishTime:J

    .line 59
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lCaptureStartTime:J

    .line 61
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;

    .line 63
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;

    .line 65
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$MainHandler;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 72
    const/16 v0, 0x28

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->SKIN_SMOOTHING_STRENGTH:I

    .line 73
    const/16 v0, 0x46

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->SKIN_TONE_ADJUSTMENT_VALUE:I

    .line 105
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 106
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 107
    iput-object p3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 108
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    .line 109
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    .line 110
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I

    .line 113
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/Photo;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lRawPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;[B)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->doBeautification_1([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z

    return v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iJpegRotation:I

    return v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegCallbackFinishTime:J

    return-void
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lJpegCallbackFinishTime:J

    return-wide v0
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    return-object v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCapture:Z

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lShutterCallbackTime:J

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lShutterLag:J

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lShutterLag:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPostViewPictureCallbackTime:J

    return-void
.end method

.method private doBeautification_1([B)[B
    .locals 8
    .parameter "jpegData"

    .prologue
    .line 181
    iget-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-nez v5, :cond_1

    .line 182
    const/4 v1, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    const/4 v1, 0x0

    .line 185
    .local v1, out:[B
    iget-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 186
    .local v2, size:Landroid/hardware/Camera$Size;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->beautyFilters:Ljava/util/ArrayList;

    .line 187
    new-instance v3, Lvisidon/Lib/enhancement/Enhancement;

    sget-object v5, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-direct {v3, v5}, Lvisidon/Lib/enhancement/Enhancement;-><init>(Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;)V

    .line 188
    .local v3, skinSmoothing:Lvisidon/Lib/enhancement/Enhancement;
    iget v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->SKIN_SMOOTHING_STRENGTH:I

    invoke-virtual {v3, v5}, Lvisidon/Lib/enhancement/Enhancement;->setStrength(I)V

    .line 189
    iget-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->beautyFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v4, Lvisidon/Lib/enhancement/Enhancement;

    sget-object v5, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_TONE_ADJUSTING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-direct {v4, v5}, Lvisidon/Lib/enhancement/Enhancement;-><init>(Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;)V

    .line 191
    .local v4, skinToneAdjustment:Lvisidon/Lib/enhancement/Enhancement;
    iget v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->SKIN_TONE_ADJUSTMENT_VALUE:I

    invoke-virtual {v4, v5}, Lvisidon/Lib/enhancement/Enhancement;->setStrength(I)V

    .line 192
    iget-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->beautyFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    sget-object v7, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v5, v6, v7}, Lvisidon/Lib/enhancement/EnhancementAPI;->initialize(IILvisidon/Lib/enhancement/EnhancementAPI$Mode;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    move-result-object v0

    .line 195
    .local v0, istate:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;
    sget-object v5, Lvisidon/Lib/enhancement/EnhancementAPI$InitState;->OK:Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    if-ne v0, v5, :cond_0

    .line 198
    iget-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->beautyFilters:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces([BLjava/util/ArrayList;Z)[B

    move-result-object v1

    .line 200
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    goto :goto_0
.end method

.method private getCameraRotation()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

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
    .line 542
    return-void
.end method

.method protected StoreDonePerformTest()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method protected StoreStartPerformTest()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method protected TakePictureStartPerformTest()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public onCapture()V
    .locals 8

    .prologue
    const/4 v3, 0x3

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z

    .line 119
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCapture:Z

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCapture:Z

    .line 125
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 128
    const-string v0, "NormalCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapture iWhat  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lCaptureStartTime:J

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lPostViewPictureCallbackTime:J

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iJpegRotation:I

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$RawPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$PostViewPictureCallback;

    .line 138
    new-instance v4, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$JpegPictureCallback;)V

    .line 137
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 140
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->onCaptureAnimation()V

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 143
    .local v7, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->lCaptureStartTime:J

    iget v4, v7, Landroid/hardware/Camera$Size;->width:I

    iget v5, v7, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    goto/16 :goto_0
.end method

.method public onCaptureAnimation()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 153
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->finish()V

    .line 230
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;

    .line 231
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;->finish()V

    .line 232
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageNamer;

    .line 234
    :cond_1
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 235
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 236
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 237
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 238
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCapture:Z

    if-eqz v0, :cond_0

    .line 524
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->bCancel:Z

    .line 525
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->iWhat:I

    .line 526
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 657
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 534
    return-void
.end method
