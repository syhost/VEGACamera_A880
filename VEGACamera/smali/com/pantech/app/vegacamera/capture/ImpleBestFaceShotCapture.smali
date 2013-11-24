.class public Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;
.super Ljava/lang/Object;
.source "ImpleBestFaceShotCapture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;,
        Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;
    }
.end annotation


# static fields
.field public static final BESTFACE_CAMERA:Ljava/lang/String; = "/data/data/com.pantech.app.vegacamera/files/bestface/"

.field public static final BESTFACE_MMS:Ljava/lang/String; = "/data/data/com.pantech.app.vegacamera/files/bestface_mms/"

.field public static final BESTFACE_PBOOK:Ljava/lang/String; = "/data/data/com.pantech.app.vegacamera/files/bestface_pbook/"

.field public static final BESTSHOT_STATE:I = 0x1

.field private static final RESTART_CAPTURE:I = 0x2

.field public static final SELFSHOT_STATE:I = 0x2

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BestFaceCapture"

.field public static final TEMP_PATH:Ljava/lang/String; = "/data/data/com.pantech.app.vegacamera.picbest.app/files/tempImage.jpg"

.field public static final mBestsourceDir:Ljava/lang/String; = "/data/data/com.pantech.app.vegacamera/files/bestface/"


# instance fields
.field private aFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bCancel:Z

.field private bCapture:Z

.field private iJpegRotation:I

.field private iShotCnt:I

.field private iShotMaxNum:I

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

.field private mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

.field private mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

.field private mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

.field private mPhoto:Lcom/pantech/app/vegacamera/Photo;

.field private final mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;

.field private final mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;

.field private final mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;II)V
    .locals 5
    .parameter "activity"
    .parameter "photo"
    .parameter "data"
    .parameter "what"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 46
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 47
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 51
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

    .line 52
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    .line 54
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCancel:Z

    .line 55
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCapture:Z

    .line 59
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iJpegRotation:I

    .line 60
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iWhat:I

    .line 61
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I

    .line 62
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I

    .line 64
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterCallbackTime:J

    .line 65
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPostViewPictureCallbackTime:J

    .line 66
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lRawPictureCallbackTime:J

    .line 67
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J

    .line 68
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterLag:J

    .line 69
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPictureDisplayedToJpegCallbackTime:J

    .line 70
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegCallbackFinishTime:J

    .line 71
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lCaptureStartTime:J

    .line 73
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;

    .line 76
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;

    .line 77
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;

    .line 79
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 81
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$MainHandler;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 107
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 108
    iput-object p3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 109
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    .line 110
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

    .line 111
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iWhat:I

    .line 112
    iput v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I

    .line 114
    iput p5, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I

    .line 115
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->PrepareCapture()V

    .line 116
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->SettingState()V

    .line 117
    return-void
.end method

.method private PrepareCapture()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    const-string v1, "pantech-multishot"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->SetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private ProcessAfterEditing(Landroid/location/Location;II)V
    .locals 8
    .parameter "loc"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x64

    .line 534
    const-string v2, "BestFaceCapture"

    const-string v3, "ProcessAfterEditing()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v7}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 538
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_goto_viewer"

    .line 539
    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 538
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, mSaveAfterView:Ljava/lang/String;
    const/4 v0, 0x0

    .line 543
    .local v0, intent:Landroid/content/Intent;
    iget v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I

    if-ne v2, v7, :cond_1

    .line 544
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-class v3, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v2, "imageData"

    new-instance v3, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    invoke-direct {v3, p1, p2, p3}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;-><init>(Landroid/location/Location;II)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 549
    const-string v2, "folder_path"

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v2, "file_list_key"

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 551
    const-string v2, "Test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pass array size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    const-string v2, "transfertoQuickvieiw"

    const-string v3, "ok"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    :goto_1
    const-string v2, "return-review"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 561
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->IsImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 564
    const-string v2, "fromWhere"

    const-string v3, "mIsImageCaptureIntent"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v0, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 573
    :goto_2
    return-void

    .line 545
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 546
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-class v3, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 556
    :cond_2
    const-string v2, "transfertoQuickvieiw"

    const-string v3, "no"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->IsAttachContentsCameraIntent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 567
    const-string v2, "fromWhere"

    const-string v3, "mIsAttachContentsCameraIntent"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v0, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 570
    :cond_4
    const-string v2, "fromWhere"

    const-string v3, "Camera"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v0, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private SettingState()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/pantech/app/vegacamera/BestFace;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 128
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/pantech/app/vegacamera/Self;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/Photo;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iWhat:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lRawPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCapture:Z

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPictureDisplayedToJpegCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I

    return v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCancel:Z

    return v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I

    return v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mState:I

    return v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    return-object v0
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iJpegRotation:I

    return v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    return-object v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegCallbackFinishTime:J

    return-void
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lJpegCallbackFinishTime:J

    return-wide v0
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterCallbackTime:J

    return-void
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Landroid/location/Location;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->ProcessAfterEditing(Landroid/location/Location;II)V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterLag:J

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lShutterLag:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPostViewPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPostViewPictureCallbackTime:J

    return-wide v0
.end method


# virtual methods
.method public onCapture()V
    .locals 9

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCancel:Z

    .line 145
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCapture:Z

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCapture:Z

    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lCaptureStartTime:J

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lPostViewPictureCallbackTime:J

    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iJpegRotation:I

    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v7

    .line 157
    .local v7, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$RawPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$PostViewPictureCallback;

    .line 160
    new-instance v4, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;

    invoke-direct {v4, p0, v7}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Landroid/location/Location;)V

    .line 159
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 162
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->onCaptureAnimation()V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 165
    .local v8, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->lCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    goto :goto_0
.end method

.method public onCaptureAnimation()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 275
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v0, :cond_0

    .line 277
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->finish()V

    .line 286
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;

    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;->finish()V

    .line 288
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageNamer;

    .line 290
    :cond_2
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 291
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 577
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->bCancel:Z

    .line 578
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iWhat:I

    .line 579
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 581
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 591
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 586
    return-void
.end method
