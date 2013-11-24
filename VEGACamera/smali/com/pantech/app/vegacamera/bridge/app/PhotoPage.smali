.class public Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;
.super Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
.implements Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;
.implements Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;,
        Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field public static final ACTION_NEXTGEN_EDIT:Ljava/lang/String; = "action_nextgen_edit"

.field private static final CAMERA_SWITCH_CUTOFF_THRESHOLD_MS:J = 0x12cL

.field private static final DEFERRED_UPDATE_MS:J = 0xfaL

.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final HIDE_BARS_TIMEOUT:I = 0xdac

.field public static final KEY_ALBUMPAGE_TRANSITION:Ljava/lang/String; = "albumpage-transition"

.field public static final KEY_APP_BRIDGE:Ljava/lang/String; = "app-bridge"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_IN_CAMERA_ROLL:Ljava/lang/String; = "in_camera_roll"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "show_when_locked"

.field public static final KEY_START_IN_FILMSTRIP:Ljava/lang/String; = "start-in-filmstrip"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field public static final MSG_ALBUMPAGE_NONE:I = 0x0

.field public static final MSG_ALBUMPAGE_PICKED:I = 0x4

.field public static final MSG_ALBUMPAGE_RESUMED:I = 0x2

.field public static final MSG_ALBUMPAGE_STARTED:I = 0x1

.field private static final MSG_DELETE_PICTURE_HOW:I = 0x16

.field private static final MSG_DO_SHARE:I = 0x15

.field private static final MSG_GOTO_QUICKVIEW:I = 0x11

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x2

.field private static final MSG_ON_CAMERA_CENTER:I = 0x9

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_ON_PICTURE_CENTER:I = 0xa

.field private static final MSG_REFRESH_BOTTOM_CONTROLS:I = 0x8

.field private static final MSG_REFRESH_IMAGE:I = 0xb

.field private static final MSG_TASK_COMPLETE:I = 0x12

.field private static final MSG_TASK_START:I = 0x14

.field private static final MSG_TASK_UPDATE:I = 0x13

.field private static final MSG_UNDOBAR_DELETED:I = 0x17

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x3

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_UPDATE_DEFERRED:I = 0xe

.field private static final MSG_UPDATE_PHOTO_UI:I = 0xc

.field private static final MSG_UPDATE_SHARE_URI:I = 0xf

.field private static final MSG_WANT_BARS:I = 0x7

.field public static final ORIENTATION_LANDSCAPE:I = 0x0

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_UNSPECIFIED:I = -0x1

.field private static final REQUEST_CROP:I = 0x2

.field private static final REQUEST_EDIT:I = 0x4

.field private static final REQUEST_PLAY_VIDEO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa


# instance fields
.field private volatile mActionBarAllowed:Z

.field private mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

.field private mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private mCameraSwitchCutoff:J

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mIsActive:Z

.field private mIsMenuVisible:Z

.field private mIsUndoVisible:Z

.field private mLogVerbose:Z

.field private mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

.field private mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPendingSharePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private mPhotoPageListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

.field private mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

.field private mRecenterCameraOnResume:Z

.field private final mRootPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

.field private mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

.field private mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

.field private mScreenNailSet:Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;

.field private mSecureAlbum:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

.field private mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowSpinner:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mTreatBackAsUp:Z

.field private mWaitOnStop:Z

.field private photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

.field protected showView_MS:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;-><init>()V

    .line 146
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    .line 148
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    .line 149
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActionBarAllowed:Z

    .line 154
    iput-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 169
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 170
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 177
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 181
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 182
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferUpdateUntil:J

    .line 190
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mLogVerbose:Z

    .line 191
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 202
    iput-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 244
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$1;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRootPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 259
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showView_MS:I

    .line 954
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoPageListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    .line 1433
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$3;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/AppBridge;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)J
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)J
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCameraSwitchCutoff:J

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsUndoVisible:Z

    return v0
.end method

.method static synthetic access$32(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$33(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$34(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onMenuClicked(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressComplete(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressStart()V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1558
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->execute(Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressUpdate(I)V

    return-void
.end method

.method private canShowBars()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 779
    const-string v1, "PhotoPage"

    const-string v2, "canShowBars"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 788
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private execute(Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z
    .locals 7
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 1559
    const/4 v0, 0x1

    .line 1560
    .local v0, result:Z
    const-string v3, "PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Execute cmd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1563
    .local v1, startTime:J
    sget v3, Lcom/pantech/app/vegacamera/R$id;->positiveButton:I

    if-ne p3, v3, :cond_0

    .line 1565
    const-string v3, "PhotoPage"

    const-string v4, "Execute action_delete"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p1, p4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->delete(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1568
    :cond_0
    const-string v3, "PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "It takes "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to execute cmd for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    return v0
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1423
    packed-switch p0, :pswitch_data_0

    .line 1429
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 1425
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 1427
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 1423
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideBars()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 756
    const-string v0, "PhotoPage"

    const-string v1, "hideBars"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 767
    :goto_0
    return-void

    .line 759
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    .line 760
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->hideView()V

    .line 763
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsMenuVisible:Z

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setLightsOutMode(Z)V

    .line 766
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1061
    const-string v0, "PhotoPage"

    const-string v1, "hideDetails"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowDetails:Z

    .line 1064
    return-void
.end method

.method private onMenuClicked(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1487
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onMenuClicked(IZZ)V

    .line 1488
    return-void
.end method

.method private onProgressComplete(I)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1484
    return-void
.end method

.method private onProgressStart()V
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1480
    return-void
.end method

.method private onProgressUpdate(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1476
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 855
    const-string v0, "PhotoPage"

    const-string v1, "onUpPressed"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 857
    const-string v0, "PhotoPage"

    const-string v1, "onUpPressed setFilmMode true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 890
    :cond_1
    :goto_0
    return-void

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 863
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setResult()V

    .line 864
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 770
    const-string v0, "PhotoPage"

    const-string v1, "refreshHidingMessage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 776
    :cond_0
    return-void
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferUpdateUntil:J

    .line 650
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 652
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 654
    :cond_0
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 1228
    const-string v3, "PhotoPage"

    const-string v4, "setCurrentPhotoByIntent"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    if-nez p1, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    .line 1232
    .local v2, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-eqz v2, :cond_0

    .line 1233
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getDefaultSetOf(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    .line 1234
    .local v0, albumPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/bridge/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1237
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1238
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "media-set-path"

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v3, "media-item-path"

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-virtual {v3, v4, v1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1243
    .end local v1           #data:Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v2, v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->setCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V

    goto :goto_0
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 893
    const-string v1, "PhotoPage"

    const-string v2, "setResult"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, result:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 897
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 900
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 618
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 622
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 623
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 624
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$6;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 629
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 624
    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-nez v0, :cond_0

    .line 1520
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setOrientation(I)V

    .line 1523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->SetListener(Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;)V

    .line 1524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->delete:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->review_ok:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->review_cancel:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->showDialog()V

    .line 1528
    return-void
.end method

.method private showBars()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    const-string v0, "PhotoPage"

    const-string v1, "showBars"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 742
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    .line 744
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->showView()V

    .line 748
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsMenuVisible:Z

    .line 749
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoPageListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setLightsOutMode(Z)V

    .line 752
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1548
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v0, :cond_1

    .line 1549
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mWaitOnStop:Z

    if-nez v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->waitDone()V

    .line 1552
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 1553
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 1554
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 1556
    :cond_1
    return-void
.end method

.method private toggleBars()V
    .locals 2

    .prologue
    .line 798
    const-string v0, "PhotoPage"

    const-string v1, "toggleBars"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 800
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->hideBars()V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1324
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getTransitionStore()Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    move-result-object v2

    .line 1326
    .local v2, transitions:Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;
    const-string v3, "albumpage-transition"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1328
    .local v0, albumPageTransition:I
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v3, :cond_2

    .line 1331
    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    .line 1332
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->resetToFirstPicture()V

    .line 1347
    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 1348
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 1352
    :cond_1
    :goto_2
    return-void

    .line 1334
    :cond_2
    const-string v3, "index-hint"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1335
    .local v1, resumeIndex:I
    if-ltz v1, :cond_0

    .line 1336
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_3

    .line 1338
    add-int/lit8 v1, v1, 0x1

    .line 1340
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1341
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    .line 1342
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_0

    .line 1348
    .end local v1           #resumeIndex:I
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 1349
    :cond_5
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1350
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    goto :goto_2
.end method

.method private updateBars()V
    .locals 2

    .prologue
    .line 808
    const-string v0, "PhotoPage"

    const-string v1, "updateBars"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->hideBars()V

    .line 814
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateMenuOperations()V

    goto :goto_0
.end method

.method private updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 4
    .parameter "photo"

    .prologue
    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    if-ne v1, p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 701
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 702
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->requestDeferredUpdate()V

    .line 707
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSecureAlbum:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 708
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateShareURI(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NullPointerException : updateCurrentPhoto photo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateUIForCurrentPhoto()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateMenuOperations()V
    .locals 3

    .prologue
    .line 716
    const-string v1, "PhotoPage"

    const-string v2, "updateMenuOperations"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    if-nez v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v0

    .line 723
    .local v0, supportedOperations:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSecureAlbum:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    if-eqz v1, :cond_3

    .line 724
    and-int/lit8 v0, v0, 0x1

    .line 730
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->updateMenuItem(I)V

    goto :goto_0

    .line 725
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 726
    and-int/lit16 v0, v0, -0x201

    .line 727
    const v1, -0x20001

    and-int/2addr v0, v1

    goto :goto_1
.end method

.method private updateShareURI(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 677
    const-string v3, "PhotoPage"

    const-string v4, "updateShareURI"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_1

    .line 679
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v1

    .line 680
    .local v1, manager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaType(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v2

    .line 681
    .local v2, type:I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getContentUri(Lcom/pantech/app/vegacamera/bridge/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 684
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v3, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 685
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 686
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getContentUri(Lcom/pantech/app/vegacamera/bridge/data/Path;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4, v5}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 688
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPendingSharePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 693
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #manager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    .end local v2           #type:I
    :goto_0
    return-void

    .line 691
    :cond_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPendingSharePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    goto :goto_0
.end method

.method private updateUIForCurrentPhoto()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    if-nez v0, :cond_0

    .line 674
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentPhoto:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 667
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateMenuOperations()V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 2

    .prologue
    .line 792
    const-string v0, "PhotoPage"

    const-string v1, "wantBars"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showBars()V

    .line 795
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSecureAlbum:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->addMediaItem(ZI)V

    .line 940
    return-void
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 241
    sget v0, Lcom/pantech/app/vegacamera/R$color;->photo_background:I

    return v0
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 1144
    const-string v0, "PhotoPage"

    const-string v1, "lockOrientation"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1146
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 932
    const-string v0, "PhotoPage"

    const-string v1, "notifyScreenNailChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->attachScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 934
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailSet:Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->notifyChange()V

    .line 935
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 3
    .parameter "allowed"

    .prologue
    .line 1156
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActionBarAllowed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActionBarAllowed:Z

    .line 1158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1159
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 1163
    const-string v0, "PhotoPage"

    const-string v1, "onActionBarWanted"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1165
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 831
    const-string v0, "PhotoPage"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->hideDetails()V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->returnToPreview()V

    .line 836
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->refreshHidingMessage()V

    .line 837
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 839
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoPageListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    goto :goto_0

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setResult()V

    .line 843
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 844
    const-string v0, "PhotoPage"

    const-string v1, "onBackPressed setFilmMode true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 846
    :cond_4
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_5

    .line 847
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 849
    :cond_5
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCommitDeleteImage()V
    .locals 3

    .prologue
    .line 1206
    const-string v0, "PhotoPage"

    const-string v1, "onCommitDeleteImage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->deSelectAll()V

    .line 1210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->toggle(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1212
    sget v0, Lcom/pantech/app/vegacamera/R$id;->positiveButton:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onMenuClicked(IZZ)V

    .line 1213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    goto :goto_0
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 2
    .parameter "confirmed"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->returnToPreview()V

    .line 1466
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->refreshHidingMessage()V

    .line 1467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoPageListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 1472
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showQuickView()V

    .line 1461
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1462
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 17
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 263
    const-string v2, "PhotoPage"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-super/range {p0 .. p2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 265
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    .line 267
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setListener(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRootPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->addComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 270
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraAppImpl;->GetInstance()Lcom/pantech/app/vegacamera/CameraAppImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getOrientationManager()Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->addListener(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setOrientationSource(Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;)V

    .line 275
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$4;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 437
    const-string v2, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 441
    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 442
    .local v11, itemPathString:Ljava/lang/String;
    if-eqz v11, :cond_8

    const-string v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v5

    .line 443
    .local v5, itemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :goto_0
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTreatBackAsUp:Z

    .line 444
    const-string v2, "start-in-filmstrip"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mStartInFilmstrip:Z

    .line 446
    const-string v2, "index-hint"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 449
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowSpinner:Z

    .line 450
    const-string v2, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v2, :cond_4

    .line 452
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    .line 453
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->setServer(Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->lockOrientation()V

    .line 458
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->newId()I

    move-result v10

    .line 459
    .local v10, id:I
    invoke-static {v10}, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->getSetPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v16

    .line 460
    .local v16, screenNailSetPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v10}, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->getItemPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v15

    .line 461
    .local v15, screenNailItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailSet:Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    if-eqz v2, :cond_0

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->attachScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 467
    :cond_0
    const-string v2, "show_when_locked"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mFlags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mFlags:I

    .line 473
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v3, "/local/all/0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSecureAlbum:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    .line 477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowSpinner:Z

    .line 479
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/filter/empty/{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 484
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/combo/item/{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 487
    move-object v5, v15

    .line 490
    .end local v10           #id:I
    .end local v15           #screenNailItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v16           #screenNailSetPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v14

    .line 492
    .local v14, originalSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_5

    instance-of v2, v14, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;

    if-eqz v2, :cond_5

    move-object v2, v14

    .line 495
    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->useNameOfChild(I)V

    .line 498
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    invoke-virtual {v2, v14}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->setSourceMediaSet(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/filter/delete/{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    if-nez v2, :cond_9

    .line 503
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to restore "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_6
    :goto_1
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    .line 518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-nez v7, :cond_b

    const/4 v7, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-nez v9, :cond_d

    const/4 v9, 0x0

    .line 517
    :goto_4
    invoke-direct/range {v1 .. v9}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/Path;IIZZ)V

    .line 520
    .local v1, pda:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setModel(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;)V

    .line 523
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$5;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->setDataListener(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;)V

    .line 603
    .end local v1           #pda:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
    .end local v14           #originalSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    :goto_5
    const-string v3, "PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "onCreate setFilmMode "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_f

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 605
    :cond_7
    return-void

    .line 442
    .end local v5           #itemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 505
    .restart local v5       #itemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .restart local v14       #originalSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    :cond_9
    if-nez v5, :cond_6

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v13

    .line 507
    .local v13, mediaItemCount:I
    if-lez v13, :cond_7

    .line 508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    if-lt v2, v13, :cond_a

    .line 509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    .line 510
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v5

    .line 511
    goto/16 :goto_1

    .line 518
    .end local v13           #mediaItemCount:I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->isPanorama()Z

    move-result v8

    goto/16 :goto_3

    .line 519
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->isStaticCamera()Z

    move-result v9

    goto/16 :goto_4

    .line 597
    .end local v14           #originalSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 598
    .local v12, mediaItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-direct {v2, v3, v4, v12}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setModel(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;)V

    .line 600
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 601
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowSpinner:Z

    goto/16 :goto_5

    .line 603
    .end local v12           #mediaItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 604
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 944
    const-string v0, "PhotoPage"

    const-string v1, "onCreateActionBar"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPendingSharePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPendingSharePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateShareURI(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->updateMenuOperations()V

    .line 951
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentImageUpdated()V
    .locals 2

    .prologue
    .line 1308
    const-string v0, "PhotoPage"

    const-string v1, "onCurrentImageUpdated"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unfreeze()V

    .line 1310
    return-void
.end method

.method public onDeleteImage(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 1183
    const-string v0, "PhotoPage"

    const-string v1, "onDeleteImage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onCommitDeleteImage()V

    .line 1185
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 1186
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeleteIsFocus:Z

    .line 1187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->addDeletion(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V

    .line 1188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1189
    return-void

    .line 1186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1394
    const-string v0, "PhotoPage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->setServer(Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;)V

    .line 1397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 1398
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->detachScreenNail()V

    .line 1399
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    .line 1400
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailSet:Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;

    .line 1401
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setListener(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;)V

    .line 1405
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setModel(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;)V

    .line 1406
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->setDataListener(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;)V

    .line 1409
    :cond_1
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    .line 1410
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRootPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->removeComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)Z

    .line 1411
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 1413
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->removeListener(Lcom/pantech/app/vegacamera/bridge/app/OrientationManager$Listener;)V

    .line 1414
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setOrientationSource(Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;)V

    .line 1417
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1418
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onDestroy()V

    .line 1419
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1420
    return-void
.end method

.method public onFilmModeChanged(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v3, 0x16

    .line 1314
    if-eqz p1, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    :goto_0
    return-void

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1319
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 1169
    const-string v1, "PhotoPage"

    const-string v3, "onFullScreenChanged"

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->lockOrientation()V

    .line 1171
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1172
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1173
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1171
    goto :goto_0
.end method

.method public onLongPress(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1128
    const-string v1, "PhotoPage"

    const-string v2, "[PhotoPage] gesture onLongPress"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1130
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->onLongPress(II)V

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 1135
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    if-ne v0, v1, :cond_1

    .line 1139
    :cond_1
    return-void
.end method

.method public onMenuClicked(IZZ)V
    .locals 3
    .parameter "action"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 1493
    sget v1, Lcom/pantech/app/vegacamera/R$id;->positiveButton:I

    if-ne p1, v1, :cond_1

    .line 1495
    const-string v1, "PhotoPage"

    const-string v2, "action_delete"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    sget v0, Lcom/pantech/app/vegacamera/R$string;->delete:I

    .line 1508
    .local v0, title:I
    :goto_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->startAction(IIZZ)V

    .line 1509
    .end local v0           #title:I
    :cond_0
    return-void

    .line 1497
    :cond_1
    sget v1, Lcom/pantech/app/vegacamera/R$id;->action_rotate_cw:I

    if-ne p1, v1, :cond_2

    .line 1498
    sget v0, Lcom/pantech/app/vegacamera/R$string;->rotate_right:I

    .line 1499
    .restart local v0       #title:I
    goto :goto_0

    .end local v0           #title:I
    :cond_2
    sget v1, Lcom/pantech/app/vegacamera/R$id;->action_rotate_ccw:I

    if-ne p1, v1, :cond_3

    .line 1500
    sget v0, Lcom/pantech/app/vegacamera/R$string;->rotate_left:I

    .line 1501
    .restart local v0       #title:I
    goto :goto_0

    .end local v0           #title:I
    :cond_3
    sget v1, Lcom/pantech/app/vegacamera/R$id;->action_show_on_map:I

    if-ne p1, v1, :cond_4

    .line 1502
    sget v0, Lcom/pantech/app/vegacamera/R$string;->show_on_map:I

    .line 1503
    .restart local v0       #title:I
    goto :goto_0

    .end local v0           #title:I
    :cond_4
    sget v1, Lcom/pantech/app/vegacamera/R$id;->action_import:I

    if-ne p1, v1, :cond_0

    .line 1504
    sget v0, Lcom/pantech/app/vegacamera/R$string;->Import:I

    .line 1505
    .restart local v0       #title:I
    goto :goto_0
.end method

.method public onMenuClicked(Ljava/lang/String;)V
    .locals 0
    .parameter "confirmMsg"

    .prologue
    .line 1512
    if-eqz p1, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onConfirmDialogShown()V

    .line 1514
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showAlertDialog(Ljava/lang/String;)V

    .line 1516
    :cond_0
    return-void
.end method

.method public onOrientationCompensationChanged()V
    .locals 2

    .prologue
    .line 818
    const-string v0, "PhotoPage"

    const-string v1, "onOrientationCompensationChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    if-eqz v0, :cond_1

    .line 820
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mCurrentIndex:I

    if-eqz v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showBars()V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setOrientationIndicator(I)V

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setOrientation(I)V

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestLayoutContentPane()V

    .line 827
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1276
    const-string v0, "PhotoPage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onPause()V

    .line 1278
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsActive:Z

    .line 1281
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setVisibility(I)V

    .line 1282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    .line 1284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unfreeze()V

    .line 1285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 1290
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->hideDetails()V

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->pause()V

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->pause()V

    .line 1296
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1299
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onCommitDeleteImage()V

    .line 1300
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    if-eqz v0, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->clearDeletion()V

    .line 1303
    :cond_2
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1304
    return-void
.end method

.method public onPictureCenter(Z)V
    .locals 4
    .parameter "isCamera"

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 609
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v3, :cond_1

    :cond_0
    move p1, v0

    .line 610
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 611
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 614
    return-void

    .line 609
    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 613
    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1356
    const-string v0, "PhotoPage"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->onResume()V

    .line 1359
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    if-nez v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    .line 1390
    :goto_0
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->setOrientation(I)V

    .line 1364
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    if-nez v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getPhotoPageLayout()Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoPageListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 1368
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setVisibility(I)V

    .line 1370
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 1372
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->freeze()V

    .line 1373
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsActive:Z

    .line 1374
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRootPane:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setContentPane(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 1376
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->resume()V

    .line 1377
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->resume()V

    .line 1378
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getFilmMode()Z

    .line 1380
    :cond_2
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->hideView()V

    .line 1382
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->setLightsOutMode(Z)V

    .line 1387
    :goto_1
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1385
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->showView()V

    goto :goto_1
.end method

.method public onSingleTapUp(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1071
    const-string v8, "PhotoPage"

    const-string v9, "[PhotoPage] gesture onSingleTapUp"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    if-eqz v8, :cond_1

    .line 1073
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mAppBridge:Lcom/pantech/app/vegacamera/bridge/app/AppBridge;

    invoke-virtual {v8, p1, p2}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;->onSingleTapUp(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    if-eqz v8, :cond_0

    .line 1078
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    invoke-interface {v8, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v2

    .line 1079
    .local v2, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mScreenNailItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    if-eq v2, v8, :cond_0

    .line 1084
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v4

    .line 1085
    .local v4, supported:I
    and-int/lit16 v8, v4, 0x80

    if-eqz v8, :cond_4

    move v3, v6

    .line 1087
    .local v3, playVideo:Z
    :goto_1
    and-int/lit16 v8, v4, 0x4000

    if-eqz v8, :cond_5

    move v0, v6

    .line 1090
    .local v0, goBack:Z
    :goto_2
    if-eqz v3, :cond_3

    .line 1093
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v5

    .line 1094
    .local v5, w:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v1

    .line 1095
    .local v1, h:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getCompensation()I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_2

    .line 1096
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v5

    .line 1097
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v1

    .line 1100
    :cond_2
    div-int/lit8 v8, v5, 0x2

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    if-gt v8, v5, :cond_6

    div-int/lit8 v8, v1, 0x2

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    if-gt v8, v1, :cond_6

    move v3, v6

    .line 1103
    .end local v1           #h:I
    .end local v5           #w:I
    :cond_3
    :goto_3
    if-eqz v3, :cond_8

    .line 1104
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSecureAlbum:Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    if-nez v6, :cond_7

    .line 1105
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #goBack:Z
    .end local v3           #playVideo:Z
    :cond_4
    move v3, v7

    .line 1085
    goto :goto_1

    .restart local v3       #playVideo:Z
    :cond_5
    move v0, v7

    .line 1087
    goto :goto_2

    .restart local v0       #goBack:Z
    .restart local v1       #h:I
    .restart local v5       #w:I
    :cond_6
    move v3, v7

    .line 1100
    goto :goto_3

    .line 1107
    .end local v1           #h:I
    .end local v5           #w:I
    :cond_7
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->finishState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    goto/16 :goto_0

    .line 1109
    :cond_8
    if-eqz v0, :cond_9

    .line 1110
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_0

    .line 1118
    :cond_9
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1249
    const-string v0, "PhotoPage"

    const-string v1, "onStateResult "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    if-nez p2, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1260
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1266
    :pswitch_1
    const-string v0, "PhotoPage"

    const-string v1, "REQUEST_CROP"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1268
    invoke-direct {p0, p3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1262
    :pswitch_2
    const-string v0, "PhotoPage"

    const-string v1, "REQUEST_EDIT"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-direct {p0, p3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1260
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1609
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mIsUndoVisible:Z

    .line 1610
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 1193
    const-string v0, "PhotoPage"

    const-string v1, "onUndoDeleteImage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-nez v0, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->setFocusHintPath(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mMediaSet:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->removeDeletion(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mDeletePath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    goto :goto_0
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 1218
    :try_start_0
    const-string v2, "PhotoPage"

    const-string v3, "playVideo"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1221
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget v2, Lcom/pantech/app/vegacamera/R$string;->alertmediaerror:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "frame"

    .prologue
    .line 908
    const-string v0, "PhotoPage"

    const-string v1, "setCameraRelativeFrame"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 910
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 926
    const-string v0, "PhotoPage"

    const-string v1, "setSwipingEnabled"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setSwipingEnabled(Z)V

    .line 928
    return-void
.end method

.method public startAction(IIZZ)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 1531
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1532
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->stopTaskAndDismissDialog()V

    .line 1534
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 1535
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-direct {v3, v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 1537
    if-eqz p4, :cond_0

    .line 1538
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getCompensation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 1539
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->delete:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 1540
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 1542
    :cond_0
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;

    invoke-direct {v2, p0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;ILjava/util/ArrayList;)V

    .line 1543
    .local v2, operation:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 1544
    iput-boolean p3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mWaitOnStop:Z

    .line 1545
    return-void
.end method

.method public switchToQuickView(I)V
    .locals 3
    .parameter "showView_ms"

    .prologue
    .line 920
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchToQuickView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->showView_MS:I

    .line 922
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 914
    const-string v0, "PhotoPage"

    const-string v1, "switchWithCaptureAnimation"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 1150
    const-string v0, "PhotoPage"

    const-string v1, "unlockOrientation"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1152
    return-void
.end method
