.class public Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;
.super Ljava/lang/Object;
.source "ImpleBurstCapture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$SaveRequest;,
        Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;
    }
.end annotation


# static fields
.field private static final BURST_COMPLETE:I = 0x7

.field private static final DISMISS_DIAGLOG:I = 0x5

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImpleBurstCapture"

.field private static final UPDATE_THUMBNAIL:I = 0x3


# instance fields
.field private iBurstCnt:I

.field private iBurstMaxCnt:I

.field private iJpegRotation:I

.field private iShutterCallbackCnt:I

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

.field private mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

.field private mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

.field private mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

.field private mPhoto:Lcom/pantech/app/vegacamera/Photo;

.field private final mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;

.field private final mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;

.field private final mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;II)V
    .locals 4
    .parameter "act"
    .parameter "photo"
    .parameter "data"
    .parameter "what"
    .parameter "maxCount"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 39
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 40
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 44
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    .line 45
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    .line 47
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iJpegRotation:I

    .line 48
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    .line 49
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    .line 50
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    .line 51
    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstMaxCnt:I

    .line 53
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterCallbackTime:J

    .line 54
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPostViewPictureCallbackTime:J

    .line 55
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lRawPictureCallbackTime:J

    .line 56
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J

    .line 57
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterLag:J

    .line 58
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPictureDisplayedToJpegCallbackTime:J

    .line 59
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegCallbackFinishTime:J

    .line 60
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lCaptureStartTime:J

    .line 61
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 63
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;

    .line 64
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;

    .line 65
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;

    .line 67
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$MainHandler;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 101
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 102
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 103
    iput-object p3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 104
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    .line 105
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    .line 106
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    .line 107
    iput p5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstMaxCnt:I

    .line 108
    return-void
.end method

.method private PrePareUri()V
    .locals 8

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 145
    .local v7, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lCaptureStartTime:J

    iget v4, v7, Landroid/hardware/Camera$Size;->width:I

    iget v5, v7, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 146
    return-void
.end method

.method private _DialogSetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 689
    :cond_0
    return-void
.end method

.method private _DissmissDialog()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 682
    :cond_0
    return-void
.end method

.method private _MemoryFullFinish()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->cleanOldUri()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;)V

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->onBurstSoundStop()V

    .line 629
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    .line 630
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 631
    const-string v0, "ImpleBurstCapture"

    const-string v1, "_MemoryFullFinish : "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopBurstShot(I)V

    .line 633
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setBurstState(Z)V

    .line 634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    .line 635
    return-void
.end method

.method private _OnCatptureComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 597
    const-string v0, "ImpleBurstCapture"

    const-string v1, "onCatptureComplete"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->cleanOldUri()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;)V

    .line 608
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    iget v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    if-nez v0, :cond_3

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    const-string v0, "ImpleBurstCapture"

    const-string v1, "onCaptureComplete__1"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setBurstState(Z)V

    .line 612
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;->onCaptureComplete()V

    .line 613
    iput v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    .line 614
    iput v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 620
    :cond_3
    return-void
.end method

.method private _ShowDialog()V
    .locals 3

    .prologue
    .line 668
    const-string v0, "ImpleBurstCapture"

    const-string v1, "_ShowDialog"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->wait:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->getOrientationCompensation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_DialogSetOrientation(I)V

    .line 674
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 675
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/Photo;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstMaxCnt:I

    return v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->onBurstSoundStop()V

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterLag:J

    return-wide v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPostViewPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lRawPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_DissmissDialog()V

    return-void
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_MemoryFullFinish()V

    return-void
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iJpegRotation:I

    return v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegCallbackFinishTime:J

    return-void
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lJpegCallbackFinishTime:J

    return-wide v0
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_OnCatptureComplete()V

    return-void
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    return v0
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->PrePareUri()V

    return-void
.end method

.method static synthetic access$32(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterCallbackTime:J

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lShutterLag:J

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    return v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    return v0
.end method

.method private getCameraRotation()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private onBurstSoundStart()V
    .locals 3

    .prologue
    .line 583
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedBurstSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->camera_burst:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SoundRoopPlay(Landroid/app/Activity;IZ)V

    .line 588
    :cond_0
    return-void
.end method

.method private onBurstSoundStop()V
    .locals 1

    .prologue
    .line 591
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedBurstSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->SoundStop()V

    .line 594
    :cond_0
    return-void
.end method


# virtual methods
.method public onCapture()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "ImpleBurstCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapture iWhat  == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bCapture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setBurstState(Z)V

    .line 122
    iput v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    .line 123
    iput v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    .line 125
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lCaptureStartTime:J

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lPostViewPictureCallbackTime:J

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iJpegRotation:I

    .line 130
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->onBurstSoundStart()V

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v7

    .line 132
    .local v7, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$RawPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$PostViewPictureCallback;

    .line 135
    new-instance v4, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;

    invoke-direct {v4, p0, v7}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;Landroid/location/Location;)V

    .line 134
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 137
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->onCaptureAnimation()V

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 140
    .local v8, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->lCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    goto/16 :goto_0
.end method

.method public onCaptureAnimation()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 155
    return-void
.end method

.method public onRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;->finish()V

    .line 280
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageSaver;

    .line 281
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->finish()V

    .line 282
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->cleanOldUri()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;->access$0(Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;)V

    .line 283
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture$ImageNamer;

    .line 285
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    .line 286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->setBurstState(Z)V

    .line 287
    iput v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    .line 288
    iput v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    .line 289
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_DissmissDialog()V

    .line 290
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 291
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 292
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 293
    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 294
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->onBurstSoundStop()V

    .line 644
    const-string v0, "ImpleBurstCapture"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 647
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    iget v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstMaxCnt:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    iget v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstMaxCnt:I

    if-ne v0, v1, :cond_4

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 655
    :cond_3
    :goto_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iWhat:I

    .line 656
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 657
    const-string v0, "ImpleBurstCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopBurstShot : iShutterCallbackCnt = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iShutterCallbackCnt:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopBurstShot(I)V

    goto :goto_0

    .line 651
    :cond_4
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->iBurstCnt:I

    if-le v0, v3, :cond_3

    .line 652
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->_ShowDialog()V

    goto :goto_1
.end method

.method public setCaptureMode(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 694
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 665
    return-void
.end method
