.class public Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;
.super Landroid/app/Activity;
.source "ArcPicturesBestInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;,
        Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;,
        Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;
    }
.end annotation


# static fields
.field protected static BURST13M:I = 0x0

.field protected static final COMMON_PREFERENCES:Ljava/lang/String; = "common_preferences"

.field public static final EXTRA_BESTFACE_FILENAME_FORMMS:Ljava/lang/String; = "bestfaceFilenameforMMS"

.field public static final EXTRA_BESTFACE_FILENAME_TO_QVIEW:Ljava/lang/String; = "bestfaceFilenametoQView"

.field public static final EXTRA_BESTFACE_URI_FORMMS:Ljava/lang/String; = "bestfaceUriforMMS"

.field public static final EXTRA_BESTFACE_URI_FOR_THUMBUPDATE:Ljava/lang/String; = "bestfacethumbnailUpdate"

.field private static final FILE_LIST_KEY:Ljava/lang/String; = "file_list_key"

.field public static final FINISH_ACTIVITY_CAUSE_PICTURE_NUMBER:I = 0x1e

.field private static final FOLDER_PATH:Ljava/lang/String; = "folder_path"

.field public static ORIENTATION_0:I = 0x0

.field public static ORIENTATION_180:I = 0x0

.field public static ORIENTATION_270:I = 0x0

.field public static ORIENTATION_90:I = 0x0

.field public static SCREEN_HEIGHT_INIT_ACTIVITY:I = 0x0

.field public static SCREEN_WIDTH_INIT_ACTIVITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PictureBestApplication"

.field public static mCurrentState:I

.field public static mresultDir:Ljava/lang/String;


# instance fields
.field public final PICTURE_NUM:I

.field protected SaveFileName:Ljava/lang/String;

.field protected is_13M:Z

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFromWhere:Ljava/lang/String;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field mImageData:Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

.field private mLocation:Landroid/location/Location;

.field protected mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

.field protected mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

.field protected mPhotos:[Ljava/lang/String;

.field protected mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

.field private mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field public mTime:J

.field private mTransferQV:Ljava/lang/String;

.field private mWidth:I

.field miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

.field protected popupButton:Landroid/app/Dialog;

.field public screenScaleSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const v0, 0xb71b00

    sput v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->BURST13M:I

    .line 65
    const-string v0, "/mnt/sdcard/DCIM/Camera/"

    sput-object v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mresultDir:Ljava/lang/String;

    .line 67
    sput v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_0:I

    .line 68
    const/16 v0, 0x5a

    sput v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_90:I

    .line 69
    const/16 v0, 0xb4

    sput v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_180:I

    .line 70
    const/16 v0, 0x10e

    sput v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_270:I

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mCurrentState:I

    .line 77
    sput v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 78
    sput v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 606
    invoke-static {}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->loadLibs()V

    .line 607
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->is_13M:Z

    .line 72
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->screenScaleSize:F

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->PICTURE_NUM:I

    .line 80
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    .line 84
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    .line 86
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 89
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 91
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    .line 92
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    .line 93
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 95
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mTransferQV:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    .line 99
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SaveFileName:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHandler:Landroid/os/Handler;

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mTime:J

    .line 49
    return-void
.end method

.method private UpdateImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "contentResolver"
    .parameter "title"
    .parameter "path"
    .parameter "dateTaken"

    .prologue
    .line 565
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 566
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v3, "orientation"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    const-string v3, "_size"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    const-string v3, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string v3, "_data"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mWidth:I

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHeight:I

    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setImageSize(Landroid/content/ContentValues;II)V

    .line 578
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mLocation:Landroid/location/Location;

    if-eqz v3, :cond_0

    .line 579
    const-string v3, "latitude"

    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 580
    const-string v3, "longitude"

    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 582
    :cond_0
    const/4 v1, 0x0

    .line 584
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 586
    const-string v3, "PictureBestApplication"

    const-string v4, "write image db update"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_deleteTempFile()V

    .line 592
    invoke-direct {p0, p3, v1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_processAfterSave(Ljava/lang/String;Landroid/net/Uri;)V

    .line 593
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->finish()V

    .line 594
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, th:Ljava/lang/Throwable;
    const-string v3, "PictureBestApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to update image"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bestface_processAfterSave(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v3, -0x1

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v2, "mIsImageCaptureIntent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "bestfaceUriforMMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 413
    const-string v1, "bestfaceFilenameforMMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setResult(ILandroid/content/Intent;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v2, "mIsAttachContentsCameraIntent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    const-string v1, "bestfaceUriforMMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 417
    const-string v1, "bestfaceFilenameforMMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mTransferQV:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    const-string v1, "bestfaceFilenametoQView"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->finish()V

    goto :goto_0

    .line 425
    :cond_3
    const-string v1, "bestfacethumbnailUpdate"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private bestface_resetResouceonDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 244
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_1

    .line 246
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    if-eqz v0, :cond_2

    .line 248
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    if-eqz v0, :cond_3

    .line 250
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 252
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_5

    .line 254
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    if-eqz v0, :cond_6

    .line 256
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 258
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 260
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    .line 261
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 262
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHandler:Landroid/os/Handler;

    .line 263
    :cond_9
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 113
    return-void
.end method

.method protected static loadLibs()V
    .locals 2

    .prologue
    .line 612
    :try_start_0
    const-string v1, "arcplatform"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 613
    const-string v1, "adkutils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 614
    const-string v1, "amcm"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 615
    const-string v1, "arcsoft_detection_base"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 616
    const-string v1, "arcsoft_smile_detection"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 617
    const-string v1, "arcpicbest"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 618
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 619
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method private mapArrayListToStringArray()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const/16 v0, 0x88

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v0, "PictureBestApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [ArcPictureBestInitActivity] mapArrayListToStringArray() mFileList.size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 599
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    :cond_0
    return-void
.end method


# virtual methods
.method protected CheckFileList()Z
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotos:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x88

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 186
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public CheckMediaScanner(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "title"
    .parameter "path"
    .parameter "dateTaken"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 521
    .local v7, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v6, i:Landroid/content/Intent;
    const-string v0, "bestfaceFilenameforMMS"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    instance-of v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v1, "mIsImageCaptureIntent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_deleteTempFile()V

    .line 526
    invoke-direct {p0, p2, v7}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_processAfterSave(Ljava/lang/String;Landroid/net/Uri;)V

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.vegacamera.NEW_PICTURE"

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    sget v0, Lcom/pantech/app/vegacamera/R$string;->picbest_save_successed:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 530
    invoke-virtual {p0, v3, v6}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setResult(ILandroid/content/Intent;)V

    .line 531
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->finish()V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v1, "mIsAttachContentsCameraIntent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    sget v0, Lcom/pantech/app/vegacamera/R$string;->picbest_save_successed:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->UpdateImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$string;->picbest_save_successed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 538
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->UpdateImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 542
    :cond_3
    instance-of v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v1, "mIsImageCaptureIntent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 545
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_deleteTempFile()V

    .line 546
    invoke-direct {p0, p2, v7}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_processAfterSave(Ljava/lang/String;Landroid/net/Uri;)V

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.vegacamera.NEW_PICTURE"

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 550
    invoke-virtual {p0, v3, v6}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->setResult(ILandroid/content/Intent;)V

    .line 551
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->finish()V

    goto :goto_0

    .line 552
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    const-string v1, "mIsAttachContentsCameraIntent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 553
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$string;->picself_save_successed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 554
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->UpdateImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 556
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$string;->picself_save_successed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->UpdateImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method protected bestface_createNprocess_Popup()V
    .locals 7

    .prologue
    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/pantech/app/vegacamera/R$string;->no_save_ok_btn:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, text:Ljava/lang/String;
    sget v5, Lcom/pantech/app/vegacamera/R$string;->popup_title_confirm:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, title:Ljava/lang/String;
    sget v5, Lcom/pantech/app/vegacamera/R$string;->popup_button_yes:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, yes:Ljava/lang/String;
    sget v5, Lcom/pantech/app/vegacamera/R$string;->popup_button_no:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, no:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 348
    new-instance v5, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$1;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$1;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 357
    new-instance v6, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;

    invoke-direct {v6, p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$2;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    .line 365
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 367
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    new-instance v6, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;

    invoke-direct {v6, p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$3;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 391
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    new-instance v6, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$4;

    invoke-direct {v6, p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$4;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 399
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->popupButton:Landroid/app/Dialog;

    new-instance v6, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$5;

    invoke-direct {v6, p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$5;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 406
    return-void
.end method

.method protected bestface_deleteTempFile()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method protected createName(J)Ljava/lang/String;
    .locals 5
    .parameter "dateTaken"

    .prologue
    .line 328
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 329
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->image_file_name_format:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected hideProgressDialog()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 325
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 306
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x400

    .line 141
    const-string v4, "PictureBestApplication"

    const-string v5, "[ArcPictureBestInitActivity] Arctivity onCreate() in"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 144
    .local v3, window:Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 147
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->requestWindowFeature(I)Z

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mTime:J

    .line 150
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 153
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 155
    sget v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    sget v5, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    if-ge v4, v5, :cond_1

    .line 156
    sget v2, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 157
    .local v2, temp:I
    sget v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    sput v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 158
    sput v2, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 161
    .end local v2           #temp:I
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    const-string v4, "file_list_key"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 164
    const-string v4, "folder_path"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mresultDir:Ljava/lang/String;

    .line 165
    const-string v4, "file_list_key"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFileList:Ljava/util/ArrayList;

    .line 166
    const-string v4, "fromWhere"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mFromWhere:Ljava/lang/String;

    .line 167
    const-string v4, "transfertoQuickvieiw"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mTransferQV:Ljava/lang/String;

    .line 168
    const-string v4, "imageData"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mImageData:Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    .line 171
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mImageData:Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->getLocation()Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mLocation:Landroid/location/Location;

    .line 172
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mImageData:Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mWidth:I

    .line 173
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mImageData:Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/ImageDataParcel;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mHeight:I

    .line 175
    new-instance v4, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-direct {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;-><init>()V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    .line 177
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mapArrayListToStringArray()V

    .line 178
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->init()V

    .line 180
    const-string v4, "PictureBestApplication"

    const-string v5, "[ArcPictureBestInitActivity] Arctivity onCreate() out"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 223
    const-string v1, "PictureBestApplication"

    const-string v2, "[ArcPictureBestInitActivity] Arctivity onDestroy() in"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->bitmapRecycle()V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    if-eqz v1, :cond_1

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 235
    .end local v0           #i:I
    :cond_1
    const-string v1, "/data/data/com.pantech.app.vegacamera.picbest.app/files/tempImage.jpg"

    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->DeleteLocalFile(Ljava/lang/String;)Z

    .line 237
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_resetResouceonDestroy()V

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 239
    const-string v1, "PictureBestApplication"

    const-string v2, "[ArcPictureBestInitActivity] Arctivity onDestroy() out"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 229
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->bitmapRecycle()V

    .line 228
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 267
    sparse-switch p1, :sswitch_data_0

    .line 276
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 281
    const-string v1, "PictureBestApplication"

    const-string v2, "[ArcPicturesBestInit] onKeyUp()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "PictureBestApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArcPicturesBestInit] keyCode :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sparse-switch p1, :sswitch_data_0

    .line 292
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.phone.navigationbar.DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 219
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 195
    const-string v1, "PictureBestApplication"

    const-string v2, "[ArcPictureBestInitActivity] Arctivity onResume() in"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.phone.navigationbar.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 206
    :cond_1
    const-string v1, "PictureBestApplication"

    const-string v2, "[ArcPictureBestInitActivity] Arctivity onResume() out"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method setListener(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;)V
    .locals 0
    .parameter "miSingleTapUp"

    .prologue
    .line 60
    iget-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    .line 61
    return-void
.end method

.method protected showProgressDialog()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->picbest_processing:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->mProgressDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    goto :goto_0
.end method
