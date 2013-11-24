.class public Lcom/pantech/app/vegacamera/Remote;
.super Lcom/pantech/app/vegacamera/Photo;
.source "Remote.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICamera;
.implements Lcom/pantech/app/vegacamera/operator/IOperInterface;
.implements Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/pantech/app/vegacamera/PreviewGestures$Listener;
.implements Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;
.implements Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;
.implements Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;
.implements Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;,
        Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;,
        Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;
    }
.end annotation


# static fields
.field private static final NFC_CONFIRM_DIALOG:I = 0x15

.field private static final NFC_CONFIRM_HELP:I = 0x16

.field private static final NFC_CONFIRM_NONE:I = 0x14

.field private static final NONE:I = -0x1

.field private static final ORIENTATION_0:I = 0x0

.field private static final ORIENTATION_180:I = 0xb4

.field private static final ORIENTATION_270:I = 0x10e

.field private static final ORIENTATION_90:I = 0x5a

.field private static final REMOCON_HEIGHT_SIZE:I = 0x2

.field private static final REMOCON_TOUCH_HEIGHT_SIZE:I = 0x3

.field private static final REMOCON_TOUCH_WIDTH_SIZE:I = 0x1

.field private static final REMOCON_WIDTH_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Remote"


# instance fields
.field private aFlashInfo:[Ljava/lang/String;

.field private aFlashMode:[Ljava/lang/String;

.field private aResolutionInfo:[Ljava/lang/String;

.field private aResolutionSize:[Ljava/lang/String;

.field private bInitialOneTime:Z

.field private bIsNfcEnable:Z

.field private bIsWiFiEnable:Z

.field private bRegisteredReceiverToast:Z

.field private bRestartActivity:Z

.field private iDialogMode:I

.field private iHandlerMessage:I

.field private iNfcConfirm:I

.field private iOrientation:I

.field private iOriginalDegree:I

.field private iSDKVersion:I

.field private iTempOrientation:I

.field private mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

.field private final mAutoFocusCallBack:Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;

.field private mCameraHashData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

.field private mNdefMessages:[Landroid/nfc/NdefMessage;

.field private mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

.field protected mNfcHelpLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

.field private mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

.field private final mPreviewCallback:Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;

.field protected mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

.field protected mRemoteCameraHandler:Landroid/os/Handler;

.field protected mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

.field private mRemoteLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field private mRemoteToastReceiver:Landroid/content/BroadcastReceiver;

.field private mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

.field private mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

.field private mRotateImageSaveListener:Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;

.field private mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

.field private mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

.field private mServiceHandler:Landroid/os/Handler;

.field private mTapView:Landroid/view/View;

.field private mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

.field private vSizeInfoArray:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    .line 81
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 83
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 84
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 86
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 88
    iput v2, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 89
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iHandlerMessage:I

    .line 92
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 93
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    .line 94
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    .line 95
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveListener:Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;

    .line 98
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcHelpLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 101
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    .line 108
    const/16 v0, 0x14

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iNfcConfirm:I

    .line 110
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mNdefMessages:[Landroid/nfc/NdefMessage;

    .line 112
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Remote;->bRestartActivity:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bInitialOneTime:Z

    .line 114
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    .line 115
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Remote;->bRegisteredReceiverToast:Z

    .line 118
    iput v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 119
    iput v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 120
    iput v2, p0, Lcom/pantech/app/vegacamera/Remote;->iTempOrientation:I

    .line 123
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionSize:[Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionInfo:[Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashMode:[Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    .line 130
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mTapView:Landroid/view/View;

    .line 132
    new-instance v0, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAutoFocusCallBack:Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;

    .line 133
    new-instance v0, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewCallback:Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;

    .line 135
    new-instance v0, Lcom/pantech/app/vegacamera/Remote$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Remote$1;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteToastReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/pantech/app/vegacamera/Remote$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Remote$2;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mConnection:Landroid/content/ServiceConnection;

    .line 1003
    new-instance v0, Lcom/pantech/app/vegacamera/Remote$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Remote$3;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    .line 59
    return-void
.end method

.method private _CameraFlashModeChange()V
    .locals 4

    .prologue
    .line 1864
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] doCameraFlashModeChange()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1866
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, flashValue:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1870
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] doCameraFlashModeChange() :: flashValue : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_CHANGED_FLASH_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1873
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x55

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1874
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1881
    .end local v0           #flashValue:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private _CameraIdChange()V
    .locals 4

    .prologue
    .line 1885
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] RemoconHandler :: CAMERA_ID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1888
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] RemoconHandler :: mOrientation : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tempOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1889
    iget v3, p0, Lcom/pantech/app/vegacamera/Remote;->iTempOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", zoomValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1888
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1891
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->remocon_image_fail:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1892
    const/4 v3, 0x0

    .line 1891
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1893
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dismissDialog()V

    .line 1895
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1896
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraKeyValueUpdate()Ljava/util/HashMap;

    move-result-object v0

    .line 1897
    .local v0, hashObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x57

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1900
    .end local v0           #hashObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private _CameraKeyValueUpdate()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1734
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Remote] cameraKeyValueUpdate :: cameraId :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/pantech/app/vegacamera/Remote;->_CheckOrientationForRemocon(IZ)V

    .line 1737
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_picture_size"

    invoke-virtual {v2, v3, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, picSize:Ljava/lang/String;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_GeneratePictureSize()V

    .line 1740
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1741
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_PICTURE_SIZE:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_RESOLUTION_SIZE:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionSize:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_RESOLUTION_INFO:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionInfo:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_CHANGED_ORIENTATION_DEGREE:Ljava/lang/String;

    iget v4, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_ZOOM_VALUE:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getZoomValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 1749
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, flashValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_CHANGED_FLASH_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    .end local v0           #flashValue:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    return-object v2

    .line 1752
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_CHANGED_FLASH_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private _CameraOrientationChange()V
    .locals 3

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iTempOrientation:I

    .line 1698
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tempOrientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Remote;->iTempOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1700
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_CHANGED_ORIENTATION_DEGREE:Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] RemoconHandler :: COMMAND_CAMERA_ORIENTATION_CHANGE : degree : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1702
    iget v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1701
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x53

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1711
    :cond_0
    return-void
.end method

.method private _CameraPictureSizeChange(Ljava/lang/String;)V
    .locals 3
    .parameter "picSize"

    .prologue
    .line 1830
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doCameraPictureSizeChange()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setting_picture_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1837
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_CHANGED_PICTURE_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x52

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1840
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1846
    :cond_0
    return-void
.end method

.method private _CameraPreChangeId()V
    .locals 3

    .prologue
    .line 881
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] cameraPreChangeId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 883
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] mServiceBinderWFD : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 884
    const-string v2, ", mServiceBinderWFD.GetRemoconPauseState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    const-string v2, ", mServiceHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->remocon_image_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 892
    const/4 v2, 0x0

    .line 891
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 893
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dismissDialog()V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 899
    :cond_2
    return-void
.end method

.method private _CheckInitServiceTerminated()V
    .locals 3

    .prologue
    .line 1094
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] _CheckInitServiceTerminated() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    const-string v2, "com.pantech.app.vegacamera.remoteshot.RemoteInitService"

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/Camera;->CheckServiceRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] [CHECK_WFD] checkInitServiceTerminated() : stop InitService"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.vegacamera.remoteshot.RemoteInitService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->stopService(Landroid/content/Intent;)Z

    .line 1103
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private _CheckOrientationForRemocon(IZ)V
    .locals 6
    .parameter "orientation"
    .parameter "send"

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0x5a

    const/4 v3, 0x0

    const/16 v2, 0xb4

    .line 1624
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iTempOrientation:I

    .line 1626
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_2

    .line 1627
    const/16 v0, 0x50

    if-lt p1, v0, :cond_3

    const/16 v0, 0x64

    if-gt p1, v0, :cond_3

    .line 1628
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 1630
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 1631
    iput v4, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 1632
    if-eqz p2, :cond_0

    .line 1633
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget v1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalOrientation(I)V

    .line 1635
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    .line 1690
    :cond_1
    :goto_0
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iTempOrientation:I

    .line 1692
    :cond_2
    return-void

    .line 1637
    :cond_3
    const/16 v0, 0xaa

    if-lt p1, v0, :cond_7

    const/16 v0, 0xbe

    if-gt p1, v0, :cond_7

    .line 1639
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_5

    .line 1640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1641
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 1642
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 1643
    if-eqz p2, :cond_4

    .line 1644
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1645
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget v1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalOrientation(I)V

    .line 1646
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    goto :goto_0

    .line 1649
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 1650
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 1651
    iput v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 1652
    if-eqz p2, :cond_6

    .line 1653
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1654
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget v1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalOrientation(I)V

    .line 1655
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    goto :goto_0

    .line 1658
    :cond_7
    const/16 v0, 0x104

    if-lt p1, v0, :cond_9

    const/16 v0, 0x118

    if-gt p1, v0, :cond_9

    .line 1659
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v0

    if-eq v5, v0, :cond_1

    .line 1660
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 1661
    iput v5, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 1662
    if-eqz p2, :cond_8

    .line 1663
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1664
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget v1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalOrientation(I)V

    .line 1665
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    goto :goto_0

    .line 1668
    :cond_9
    const/16 v0, 0x15e

    if-lt p1, v0, :cond_a

    const/16 v0, 0x167

    if-le p1, v0, :cond_b

    :cond_a
    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    .line 1670
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_d

    .line 1671
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 1672
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 1673
    iput v2, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 1674
    if-eqz p2, :cond_c

    .line 1675
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1676
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget v1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalOrientation(I)V

    .line 1677
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    goto/16 :goto_0

    .line 1680
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1681
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    .line 1682
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    .line 1683
    if-eqz p2, :cond_e

    .line 1684
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1685
    :cond_e
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget v1, p0, Lcom/pantech/app/vegacamera/Remote;->iOriginalDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalOrientation(I)V

    .line 1686
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    goto/16 :goto_0
.end method

.method private _CloseNFCBeamInterface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->OnReleaseNfcBeamInterface()V

    .line 1275
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->OnReleaseNfcEnabler()V

    .line 1280
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    .line 1283
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_HideNfcConfirm()V

    .line 1284
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->HideNfcHelp()V

    .line 1286
    const/16 v0, 0x14

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iNfcConfirm:I

    .line 1287
    return-void
.end method

.method private _CloseRemoconService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1258
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] closeRemoconService()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnExitRemoteService()V

    .line 1261
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 1262
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    .line 1263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconReady(Z)V

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->OnDisableForeground()V

    .line 1270
    :cond_1
    return-void
.end method

.method private _CommandStartPreview()V
    .locals 2

    .prologue
    .line 902
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] _CommandStartPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] setCameraStateUpdated : false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setCameraStateUpdated(Z)V

    .line 907
    :cond_0
    return-void
.end method

.method private _DeleteImageFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 2003
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] Deleting camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2006
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    :cond_0
    return-void
.end method

.method private _DialogAllState()Z
    .locals 2

    .prologue
    .line 1174
    const/4 v0, 0x0

    .line 1176
    .local v0, state:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const/4 v0, 0x1

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->IsShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    const/4 v0, 0x1

    .line 1182
    :cond_1
    return v0
.end method

.method private _DoFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1198
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] _DoFinish()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setCameraStateUpdated(Z)V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->dismissDialog()V

    .line 1205
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->clear()V

    .line 1207
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CloseRemoconService()V

    .line 1208
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CloseNFCBeamInterface()V

    .line 1209
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_ReleaseBindReg()V

    .line 1211
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setServiceStarted(Z)V

    .line 1213
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 1214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setIntentProcessed(Z)V

    .line 1217
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 1218
    return-void
.end method

.method private _DoPreferenceUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 655
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] _DoPreferenceUpdate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 658
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bRestartActivity:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bRestartActivity:Z

    .line 663
    :cond_0
    return-void
.end method

.method private _FinishCameraActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1327
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] finishCameraActivity()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetBlockPreference(Z)V

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setServerConnected(Z)V

    .line 1333
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 1334
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBlockBackPressforRemocon(Z)V

    .line 1335
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnBackPressed()Z

    .line 1337
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoFinish()V

    .line 1338
    return-void
.end method

.method private _GenerateFlashValues()V
    .locals 11

    .prologue
    .line 1549
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1553
    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1554
    .local v4, optionVec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1556
    .local v2, infoVec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v7

    .line 1558
    .local v7, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$array;->flash_mode_camera_entries:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1559
    .local v5, rFlashArray:[Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$array;->flash_mode_camera_entryvalues:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1561
    .local v6, rInfoArray:[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1562
    iput-object v5, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashMode:[Ljava/lang/String;

    .line 1563
    iput-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    goto :goto_0

    .line 1567
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 1579
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashMode:[Ljava/lang/String;

    .line 1580
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashMode:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashMode:[Ljava/lang/String;

    .line 1582
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    .line 1583
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    .line 1585
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    array-length v8, v8

    if-lt v1, v8, :cond_5

    .line 1589
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 1590
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    goto :goto_0

    .line 1568
    :cond_2
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1570
    .local v3, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    :goto_3
    array-length v8, v6

    if-lt v0, v8, :cond_3

    .line 1567
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1571
    :cond_3
    aget-object v8, v6, v0

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1572
    aget-object v8, v5, v0

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1573
    aget-object v8, v6, v0

    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1570
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1586
    .end local v0           #count:I
    .end local v3           #msg:Ljava/lang/String;
    :cond_5
    const-string v8, "RemoteShot"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "aFlashInfo :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private _GeneratePictureSize()V
    .locals 12

    .prologue
    .line 1515
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1516
    .local v7, sizeVec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1519
    .local v2, infoVec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    .line 1520
    .local v8, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/pantech/app/vegacamera/R$array;->setting_picture_size_entryvalues:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1521
    .local v5, rSizeArray:[Ljava/lang/String;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/pantech/app/vegacamera/R$array;->setting_picture_size_entries:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1523
    .local v4, rInfoArray:[Ljava/lang/String;
    const-string v9, "RemoteShot"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Remote] supported.size() :: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rSizeArray.length :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1524
    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rInfoArray.length :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1523
    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_0

    .line 1538
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionSize:[Ljava/lang/String;

    .line 1539
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionSize:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionSize:[Ljava/lang/String;

    .line 1541
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionInfo:[Ljava/lang/String;

    .line 1542
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionInfo:[Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionInfo:[Ljava/lang/String;

    .line 1544
    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 1545
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1546
    return-void

    .line 1527
    :cond_0
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 1528
    .local v6, size:Landroid/hardware/Camera$Size;
    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    array-length v9, v5

    if-lt v0, v9, :cond_1

    .line 1526
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    aget-object v9, v5, v0

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1531
    aget-object v9, v5, v0

    invoke-virtual {v7, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1532
    aget-object v9, v4, v0

    invoke-virtual {v2, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1529
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private _HideNfcConfirm()V
    .locals 2

    .prologue
    .line 1290
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] hideNfcConfirm()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 1293
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1295
    :cond_0
    return-void
.end method

.method private _InitNFCBeamInterface()V
    .locals 5

    .prologue
    .line 1134
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] _InitNFCBeamInterface()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const/16 v0, 0x14

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iNfcConfirm:I

    .line 1138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/pantech/app/vegacamera/Remote;->iSDKVersion:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;-><init>(Landroid/content/Context;ZLandroid/os/Handler;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    if-nez v0, :cond_1

    .line 1142
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    .line 1143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->SetListener(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;)V

    .line 1144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->InitNfcStateChanged()V

    .line 1146
    :cond_1
    return-void
.end method

.method private _InitNFCDialogShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1106
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] _InitNFCDialogShow() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getmPrefInitOriginalNum()I

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPrefInitNum()I

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_dialog"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 1111
    .local v0, num:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    .line 1131
    .end local v0           #num:I
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getmPrefInitOriginalNum()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1117
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_dialog"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 1118
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_dialog"

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1119
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    goto :goto_0

    .line 1123
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getmPrefInitOriginalNum()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_dialog"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    goto :goto_0
.end method

.method private _InitNFCTutorialShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2071
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] _InitNFCTutorialShow() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getmPrefInitOriginalNum()I

    move-result v1

    if-nez v1, :cond_1

    .line 2074
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPrefInitNum()I

    move-result v1

    if-nez v1, :cond_0

    .line 2075
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_tutorial"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 2076
    .local v0, num:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    .line 2096
    .end local v0           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2081
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getmPrefInitOriginalNum()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 2082
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_tutorial"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 2083
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_tutorial"

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 2084
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 2085
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    goto :goto_0

    .line 2088
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getmPrefInitOriginalNum()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2089
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "Pref_init_nfc_tutorial"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2090
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 2091
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    goto :goto_0
.end method

.method private _InitialRemoteConfiguration()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    .line 309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->SetListener(Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;)V

    .line 310
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    .line 311
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->SetListener(Lcom/pantech/app/vegacamera/nfcbeam/NdefReader$NdefReaderListener;)V

    .line 313
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v2, p0, Lcom/pantech/app/vegacamera/Remote;->iSDKVersion:I

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->OnWifiStateStart_New()V

    .line 316
    return-void
.end method

.method private _InitialRemoteObject()V
    .locals 6

    .prologue
    .line 287
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    .line 289
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getInstance()Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 290
    new-instance v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;-><init>(Lcom/pantech/app/vegacamera/Remote;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    .line 291
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->GetRemoteHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    .line 292
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconReady(Z)V

    .line 293
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 295
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_picture_size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, pictureSize:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalPictureSize()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalPictureSize(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_flash_mode_camera"

    .line 301
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_camera_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, flashMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalFlashMode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalFlashMode(Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void
.end method

.method private _RegisterRemoteToast()V
    .locals 3

    .prologue
    .line 1149
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] _RegisterRemoteToast()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "Remote_Toast_Broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteToastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Remote;->bRegisteredReceiverToast:Z

    .line 1156
    return-void
.end method

.method private _Release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1397
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] [CHECK_WFD] release()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    if-eqz v0, :cond_0

    .line 1400
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] release() : mNfcDetector "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->OnRelease()V

    .line 1402
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    if-eqz v0, :cond_1

    .line 1405
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] release() : mNfcReader "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;->OnNdefReaderRelease()V

    .line 1407
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcReader:Lcom/pantech/app/vegacamera/nfcbeam/NdefReader;

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    if-eqz v0, :cond_2

    .line 1410
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] release() : mWifiState "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->OnRelease()V

    .line 1412
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    if-eqz v0, :cond_3

    .line 1415
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] release() : mRotateTimerDialog "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->OnRelease()V

    .line 1417
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    .line 1419
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_4

    .line 1420
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] release() : mWarningRotateDialog "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->SetListener(Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;)V

    .line 1422
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 1424
    :cond_4
    return-void
.end method

.method private _ReleaseBindReg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1186
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] _ReleaseBindReg()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getBindedService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBindedService(Z)V

    .line 1191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setServiceStarted(Z)V

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setServerConnected(Z)V

    .line 1195
    :cond_1
    return-void
.end method

.method private _RemoveAllMessage()V
    .locals 7

    .prologue
    const/16 v6, 0x55

    const/16 v5, 0x53

    const/16 v4, 0x52

    const/16 v3, 0x4c

    const/16 v2, 0x4b

    .line 1303
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] removeAllMessage()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1317
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1318
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1319
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1320
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    :cond_1
    return-void
.end method

.method private _SetLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->dialog_rotate_no_option_two:I

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    .line 520
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->setListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;)V

    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->setVisibilityLayout(Z)V

    .line 523
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->dialog_rotate_no_option_two:I

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    .line 524
    new-instance v0, Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;-><init>(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveListener:Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;

    .line 525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveListener:Lcom/pantech/app/vegacamera/Remote$RotateImageSaveListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->setListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;)V

    .line 526
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->setVisibilityLayout(Z)V

    .line 527
    return-void
.end method

.method private _SetOrientationIndicator(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 1596
    const/16 v0, 0xfa

    if-lt p1, v0, :cond_2

    const/16 v0, 0x122

    if-gt p1, v0, :cond_2

    .line 1597
    const/16 p1, 0x10e

    .line 1608
    :cond_0
    :goto_0
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_6

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_6

    .line 1619
    :cond_1
    :goto_1
    return-void

    .line 1598
    :cond_2
    const/16 v0, 0x154

    if-lt p1, v0, :cond_3

    .line 1599
    const/4 p1, 0x0

    .line 1600
    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_4

    .line 1601
    const/4 p1, 0x0

    .line 1602
    goto :goto_0

    :cond_4
    const/16 v0, 0x46

    if-lt p1, v0, :cond_5

    const/16 v0, 0x6e

    if-gt p1, v0, :cond_5

    .line 1603
    const/16 p1, 0x5a

    .line 1604
    goto :goto_0

    :cond_5
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    .line 1605
    const/16 p1, 0xb4

    goto :goto_0

    .line 1612
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    if-eqz v0, :cond_7

    .line 1613
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    add-int/lit8 v1, p1, 0x5a

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->setOrientation(I)V

    .line 1614
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    if-eqz v0, :cond_8

    .line 1615
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    add-int/lit8 v1, p1, 0x5a

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->setOrientation(I)V

    .line 1616
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    add-int/lit8 v1, p1, 0x5a

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setOrientation(I)V

    goto :goto_1
.end method

.method private _SetPreviewData([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetCameraStateUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setPreviewData([B)V

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setPreviewData([B)V

    goto :goto_0
.end method

.method private _ShowAlertDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mode"
    .parameter "title"
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 964
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] showAlertDialog()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-nez v0, :cond_0

    .line 966
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAlertDialogListener:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->SetListener(Lcom/pantech/app/vegacamera/ui/RotateAlertDialog$Listener;)V

    .line 969
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setCheckBoxText(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setMessage(Ljava/lang/String;)V

    .line 974
    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_2

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->review_ok:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->showDialog()V

    .line 986
    return-void

    .line 977
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 978
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 979
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->review_ok:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->review_cancel:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 983
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->review_ok:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->review_cancel:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _ShowNfcConfirm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 951
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] showNfcConfirm()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const/16 v0, 0x15

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iNfcConfirm:I

    .line 958
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 959
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->nfc_dialog_alert_title:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->nfc_alert_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-direct {p0, v3, v0, v1}, Lcom/pantech/app/vegacamera/Remote;->_ShowAlertDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method private _ShowNfcHelp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 910
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] showNfcHelp() : mIsNfcEnable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Remote;->bIsNfcEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsWiFiEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 911
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Remote;->bIsWiFiEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SDKVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Remote;->iSDKVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Remote;->bInitialOneTime:Z

    .line 913
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 915
    const/16 v0, 0x16

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iNfcConfirm:I

    .line 917
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] showNfcHelp() : return "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPrefInitNum()I

    move-result v0

    if-nez v0, :cond_2

    .line 922
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-eq v0, v1, :cond_2

    .line 926
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] showNfcHelp() : _ShowRemoteHelpTutorialAfterPause() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iSDKVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 934
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bIsNfcEnable:Z

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->onRemoteServiceConnectedState(Z)V

    goto :goto_0

    .line 938
    :cond_3
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bIsNfcEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bIsWiFiEnable:Z

    if-nez v0, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->onRemoteServiceConnectedState(Z)V

    goto :goto_0
.end method

.method private _UnRegisterRemoteToast()V
    .locals 3

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteToastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1160
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Remote;->bRegisteredReceiverToast:Z

    if-eqz v1, :cond_0

    .line 1161
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] _UnRegisterRemoteToast()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteToastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteToastReceiver:Landroid/content/BroadcastReceiver;

    .line 1168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Remote;->bRegisteredReceiverToast:Z

    .line 1171
    :cond_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnErrorSocketException()V

    goto :goto_0
.end method

.method private _UpdateInitSwitchCameraValue()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setCameraId(I)V

    .line 874
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setZoomValue(I)V

    .line 875
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraIdChange()V

    .line 876
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoPreferenceUpdate()V

    .line 878
    :cond_0
    return-void
.end method

.method private _UpdateRemoteZoomVoiceControl(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setZoomValue(I)V

    .line 647
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    :cond_0
    return-void
.end method

.method private _WifiStateEnd()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->OnWifiStateEnd_New()V

    .line 1394
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/Remote;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/Remote;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/Remote;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/Remote;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iHandlerMessage:I

    return v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/Remote;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iHandlerMessage:I

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/Remote;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Remote;->_SetPreviewData([B)V

    return-void
.end method


# virtual methods
.method public CameraImageSaveResult(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 510
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] imageSaveResult : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dismissDialog()V

    .line 516
    :cond_0
    return-void
.end method

.method public CommandCameraInfoUpdate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1439
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v7, :cond_0

    .line 1441
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    .line 1442
    .local v2, original_width:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    .line 1443
    .local v1, original_height:I
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1444
    .local v6, surfaceViewLocation:[I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v5, v7, Landroid/hardware/Camera$Size;->width:I

    .line 1445
    .local v5, size_width:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    .line 1446
    .local v4, size_height:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1449
    .local v3, pictureSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v7

    const-string v8, "pref_flash_mode_camera"

    .line 1450
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v10, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_camera_default:I

    invoke-virtual {v9, v10}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1449
    invoke-virtual {v7, v8, v9}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1452
    .local v0, flashMode:Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v7, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalFlashMode(Ljava/lang/String;)V

    .line 1453
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v7, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setChangedFlashMode(Ljava/lang/String;)V

    .line 1454
    const-string v7, "RemoteShot"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Remote] RemoconHandler :: COMMAND_CAMERA_INFO_UPDATE : mOrientation : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1455
    iget v9, p0, Lcom/pantech/app/vegacamera/Remote;->iOrientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preOrientation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getPreRemoconOrientation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1454
    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_GeneratePictureSize()V

    .line 1464
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1466
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_LOCATION:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_HEIGHT:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_WIDTH:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_LEFT:Ljava/lang/String;

    aget v9, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_RIGHT:Ljava/lang/String;

    .line 1471
    aget v9, v6, v11

    iget-object v10, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1470
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_TOP:Ljava/lang/String;

    aget v9, v6, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SURFACEVIEW_BOTTOM:Ljava/lang/String;

    .line 1474
    aget v9, v6, v12

    iget-object v10, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1473
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_SHUTTER_AREA:Ljava/lang/String;

    .line 1476
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v10, Lcom/pantech/app/vegacamera/R$id;->remote_shutter_button:I

    invoke-virtual {v9, v10}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1475
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const-string v7, "RemoteShot"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Remote] RemoconHandler :: KEY_CAMERA_SHUTTER_AREA : getLeft :: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v10, Lcom/pantech/app/vegacamera/R$id;->remote_shutter_button:I

    invoke-virtual {v9, v10}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1478
    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_ZOOMCTRLBAR_AREA:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v10, Lcom/pantech/app/vegacamera/R$id;->zoom_control_bars:I

    invoke-virtual {v9, v10}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1482
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1481
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_PREVIEW_WIDTH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_PREVIEW_HEIGHT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_DISPLAY_WIDTH:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_DISPLAY_HEIGHT:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_RESOLUTION_SIZE:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionSize:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_RESOLUTION_INFO:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aResolutionInfo:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_GenerateFlashValues()V

    .line 1495
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FLASH_SIZE:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashMode:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FLASH_INFO:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->aFlashInfo:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_PICTURE_SIZE:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FLASH_MODE:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_ID:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pantech/app/vegacamera/Remote;->_GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_ZOOM_VALUE:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v8, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_ZOOM_MAX_VALUE:Ljava/lang/String;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 1505
    const-string v7, "RemoteShot"

    const-string v8, "[Remote] RemoconHandler :: CAMERA_INFO_SEND"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x4d

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1511
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #original_height:I
    .end local v2           #original_width:I
    .end local v3           #pictureSize:Ljava/lang/String;
    .end local v4           #size_height:I
    .end local v5           #size_width:I
    .end local v6           #surfaceViewLocation:[I
    :cond_0
    :goto_0
    return-void

    .line 1508
    .restart local v0       #flashMode:Ljava/lang/String;
    .restart local v1       #original_height:I
    .restart local v2       #original_width:I
    .restart local v3       #pictureSize:Ljava/lang/String;
    .restart local v4       #size_height:I
    .restart local v5       #size_width:I
    .restart local v6       #surfaceViewLocation:[I
    :cond_1
    const-string v7, "RemoteShot"

    const-string v8, "[Remote] RemoconHandler :: CAMERA_INFO_FAIL"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public CommandStopPreview()V
    .locals 2

    .prologue
    .line 1221
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doCommandStopPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetCameraStateUpdated2(Z)V

    .line 1224
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnCommandStopPreview()V

    .line 1226
    :cond_0
    return-void
.end method

.method public ConnectionResult(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1348
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] connectionResult() : result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_2

    .line 1350
    const-string v0, "connection_success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] connectionResult() : CONNECTION_SUCCESS ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBlockBackPressforRemocon(Z)V

    .line 1353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->dismissDialog()V

    .line 1355
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    .line 1356
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1357
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bInitialOneTime:Z

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->connection_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1360
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Remote;->bInitialOneTime:Z

    .line 1366
    :cond_1
    const-string v0, "connection_fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] connectionResult() : CONNECTION_FAIL ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBlockBackPressforRemocon(Z)V

    .line 1371
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->dismissDialog()V

    .line 1372
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->connection_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1374
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnFinishServiceReady()V

    .line 1378
    :cond_2
    return-void
.end method

.method public DispatchTouchE(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 482
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->DispatchTouchEv(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->IsRemoteTutorialVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->SetZoomBarMultiPressed(Z)V

    move v0, v1

    .line 499
    :goto_0
    return v0

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->IsRemoteTutorialVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->SetZoomBarMultiPressed(Z)V

    .line 496
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->DispatchTouchE(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 499
    :cond_3
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->DispatchTouchE(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public HideNfcHelp()V
    .locals 2

    .prologue
    .line 1298
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] hideNfcHelp()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->onRemoteServiceConnectedState(Z)V

    .line 1300
    return-void
.end method

.method public OnBackPressed()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 691
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 738
    :goto_0
    return v1

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getBindedService()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getServerConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 696
    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v4, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-eq v1, v4, :cond_1

    .line 697
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->RemoveAllTutorial()V

    .line 698
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->SetTutoMode(I)V

    .line 699
    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    sput v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    move v1, v2

    .line 700
    goto :goto_0

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 705
    const/4 v1, -0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    move v1, v2

    .line 706
    goto :goto_0

    .line 708
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getBlockBackPressforRemocon()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->block_back_press:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-static {v1, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 710
    const-string v1, "RemoteShot"

    const-string v3, "[Remote] cameraBackPressed() : First "

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 711
    goto :goto_0

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getBackPressedCnt()I

    move-result v1

    if-ge v1, v2, :cond_5

    .line 715
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getBackPressedCnt()I

    move-result v0

    .line 716
    .local v0, backPressedCnt:I
    add-int/lit8 v0, v0, 0x1

    .line 717
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 718
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->back_pressed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9c4

    invoke-static {v1, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 719
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 720
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    const-wide/16 v4, 0x9c4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 721
    :cond_4
    const-string v1, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Remote] showNfcHelp() : Second :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 722
    goto/16 :goto_0

    .line 724
    .end local v0           #backPressedCnt:I
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 726
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_FinishCameraActivity()V

    move v1, v3

    .line 727
    goto/16 :goto_0

    .line 730
    :cond_6
    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v4, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-eq v1, v4, :cond_7

    .line 731
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->RemoveAllTutorial()V

    .line 733
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->SetTutoMode(I)V

    .line 734
    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    sput v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    move v1, v2

    .line 735
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 738
    goto/16 :goto_0
.end method

.method public OnCameraInfoUpdateComplete()V
    .locals 2

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconReady(Z)V

    .line 1719
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraOrientationChange()V

    .line 1722
    :cond_1
    return-void
.end method

.method public OnCameraKeyValueUpdate()V
    .locals 3

    .prologue
    .line 1725
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] doCameraKeyValueUpdate"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1728
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraKeyValueUpdate()Ljava/util/HashMap;

    move-result-object v0

    .line 1729
    .local v0, hashObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1731
    .end local v0           #hashObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public OnCameraSwitch()V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnCameraSwitch()V

    .line 366
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] OnCameraSwitch()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] ChangeCameraId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getServiceStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->onRemoteServiceConnectedState(Z)V

    .line 370
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_UpdateInitSwitchCameraValue()V

    .line 372
    :cond_0
    return-void
.end method

.method public OnCameraZoomValueChanged()V
    .locals 4

    .prologue
    .line 1981
    const/4 v0, 0x0

    .line 1983
    .local v0, index:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1984
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetRemoconPauseState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getZoomValue()I

    move-result v0

    .line 1986
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1987
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_ZOOM_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1989
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x62

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1995
    :cond_0
    return-void
.end method

.method public OnCommandResolution(Ljava/lang/String;)V
    .locals 2
    .parameter "changedResolution"

    .prologue
    .line 1849
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doCommandResolution()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->OnHideMenuContainer()V

    .line 1852
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredPictureSize(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalPictureSize(Ljava/lang/String;)V

    .line 1856
    :cond_0
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PICTURESIZE:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Remote;->SetUpdateParameter(J)V

    .line 1859
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->Start()V

    .line 1861
    return-void
.end method

.method public OnCommandSnapshot(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 1760
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetCameraStateUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->OnHideMenuContainer()V

    .line 1763
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRequestSnapshot(Z)V

    .line 1764
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/Remote;->SetOperHandler(II)V

    .line 1765
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->remocon_image_save:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->showWaitingDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->remocon_image_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected OnCreateCameraScreenNail()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 322
    return-void
.end method

.method public OnDeleteJpegFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "deleteFileName"
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 2011
    const-string v4, "RemoteShot"

    const-string v5, "[Remote] Deleting Remocon "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    .line 2014
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v3, remoconDirectory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2068
    :goto_0
    return-void

    .line 2018
    :cond_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->setCameraWhere(Ljava/lang/String;)V

    .line 2020
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->CameraCur(Landroid/content/ContentResolver;)V

    .line 2021
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameralength()I

    move-result v2

    .line 2023
    .local v2, index:I
    invoke-static {v7}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameraPath(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2024
    invoke-static {p1}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->setCameraWhere(Ljava/lang/String;)V

    .line 2025
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    .line 2026
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->CameraCur(Landroid/content/ContentResolver;)V

    .line 2029
    :cond_1
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Remote] QuickStatic FileControl.index :  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 2067
    :goto_2
    const-string v4, "RemoteShot"

    const-string v5, "[Remote] Could All files deleted "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2031
    :cond_2
    const-string v4, "RemoteShot"

    .line 2032
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Remote] QuickStatic FileControl.getCameraPath(i) :  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameraPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", i : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2033
    const-string v6, ", filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2032
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2031
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameraPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2035
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Remote] QuickStatic photoNum :  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deleteFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameraPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/Remote;->_DeleteImageFile(Ljava/lang/String;)V

    .line 2038
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->caDelelte(I)Z

    .line 2040
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameralength()I

    move-result v0

    .line 2042
    .local v0, count:I
    if-nez v0, :cond_5

    .line 2043
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Remote] QuickStatic count : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2044
    const-string v6, ", remoconDirectory.listFiles().length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2043
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_3

    .line 2046
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2048
    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    check-cast v4, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->updateThumbnailByDeleteImage()V

    .line 2061
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2062
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2061
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2051
    :cond_5
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v4, :cond_4

    .line 2052
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getLastFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameraPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2053
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-static {v7}, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->getCameraPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setLastFilePath(Ljava/lang/String;)V

    .line 2054
    const-string v4, "RemoteShot"

    .line 2055
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Remote] QuickStatic lastFilePath :  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getLastFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2056
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2055
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2054
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2030
    .end local v0           #count:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public OnDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    const-string v0, "Remote"

    const-string v1, "[Remote] OnDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoFinish()V

    .line 450
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_WifiStateEnd()V

    .line 451
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_Release()V

    .line 452
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    if-eqz v0, :cond_0

    .line 453
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 455
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    .line 458
    :cond_1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnDestroy()V

    .line 460
    return-void
.end method

.method public OnErrorSocketException()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1776
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doErrorSocketException()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DialogAllState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1779
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->OnHideMenuContainer()V

    .line 1781
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->IsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->dismissDialog()V

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dismissDialog()V

    .line 1787
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnFinishServiceReady()V

    .line 1788
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    if-ne v0, v3, :cond_2

    .line 1789
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 1793
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_3

    .line 1794
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    .line 1795
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 1799
    :cond_3
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 1800
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->reconnect_title_text:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1801
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->reconnect_text:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1800
    invoke-direct {p0, v3, v0, v1}, Lcom/pantech/app/vegacamera/Remote;->_ShowAlertDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1804
    :cond_4
    return-void
.end method

.method public OnFinishService()V
    .locals 2

    .prologue
    .line 1229
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] OnFinishService()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CloseRemoconService()V

    .line 1231
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CloseNFCBeamInterface()V

    .line 1232
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_ReleaseBindReg()V

    .line 1234
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_InitNFCBeamInterface()V

    .line 1235
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_ShowNfcHelp()V

    .line 1237
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->MenuContainerEnableMenuSwitchButton()V

    .line 1239
    return-void
.end method

.method public OnFinishServiceReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1242
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doFinishServiceReady()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetServiceHandlerStop(Z)V

    .line 1245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetBlockPreference(Z)V

    .line 1246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    .line 1247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBlockBackPressforRemocon(Z)V

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnFinishService()V

    .line 1250
    return-void
.end method

.method public OnFocusDone()V
    .locals 4

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_1

    .line 1965
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1966
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FOCUS_RESULT:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFocusResult()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FOCUS_TOUCHED:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFocusTouched()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    const-string v0, "RemoteShot"

    .line 1971
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] RemoconHandler :: isRemoconFocusResult key value"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1972
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FOCUS_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1971
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1969
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x47

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconFocusState(Z)V

    .line 1978
    :cond_1
    return-void
.end method

.method public OnFocusFunctionFactory(Ljava/lang/Object;)V
    .locals 10
    .parameter "mCommand"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1927
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v6, :cond_1

    .line 1928
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v6

    if-nez v6, :cond_2

    .line 1929
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v6, v8}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconSpotFocus(Z)V

    .line 1930
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v6, v8}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconFocusState(Z)V

    .line 1934
    :goto_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "&&"

    invoke-direct {v2, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    .local v2, sInfoToken:Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1942
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconSpotFocus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1943
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->OnHideMenuContainer()V

    .line 1945
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getWidth()I

    move-result v1

    .line 1946
    .local v1, displayWidth:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getHeight()I

    move-result v0

    .line 1948
    .local v0, displayHeight:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1949
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    int-to-float v7, v1

    mul-float/2addr v7, v6

    .line 1950
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    invoke-virtual {v6, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1949
    div-float v4, v7, v6

    .line 1951
    .local v4, tempX:F
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    int-to-float v7, v0

    mul-float/2addr v7, v6

    .line 1952
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1951
    div-float v5, v7, v6

    .line 1954
    .local v5, tempY:F
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 1955
    const-string v6, "RemoteShot"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tempX : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tempY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1956
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayHeight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1955
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mTapView:Landroid/view/View;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {p0, v6, v7, v8}, Lcom/pantech/app/vegacamera/Remote;->OnSingleTapUp(Landroid/view/View;II)V

    .line 1961
    .end local v0           #displayHeight:I
    .end local v1           #displayWidth:I
    .end local v2           #sInfoToken:Ljava/util/StringTokenizer;
    .end local v4           #tempX:F
    .end local v5           #tempY:F
    :cond_1
    return-void

    .line 1932
    :cond_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v6, v9}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconSpotFocus(Z)V

    goto/16 :goto_0

    .line 1936
    .restart local v2       #sInfoToken:Ljava/util/StringTokenizer;
    :cond_3
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$$"

    invoke-direct {v3, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    .local v3, sToken:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1938
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->vSizeInfoArray:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2108
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DialogAllState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    const/4 v0, 0x0

    .line 2111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DialogAllState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    const/4 v0, 0x0

    .line 2119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public OnLongPress(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2102
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnLongPress(Landroid/view/View;II)V

    .line 2104
    :cond_0
    return-void
.end method

.method public OnModeDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    const-string v0, "Remote"

    const-string v1, "[Remote] OnModeDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoFinish()V

    .line 469
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_WifiStateEnd()V

    .line 470
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_Release()V

    .line 472
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    if-eqz v0, :cond_0

    .line 473
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 475
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    .line 478
    :cond_1
    return-void
.end method

.method public OnNfcEnablerMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 1054
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] nfcEnablerMessage() : action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " !!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v0, "nfc_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    const-string v0, "NFC_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Remote;->SetIsNFCEnable(Z)V

    .line 1058
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_ShowNfcHelp()V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    const-string v0, "NFC_disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Remote;->SetIsNFCEnable(Z)V

    goto :goto_0

    .line 1061
    :cond_2
    const-string v0, "NFC_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_ShowNfcConfirm()V

    goto :goto_0
.end method

.method public OnNfcIntentDetected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "intent"
    .parameter "action"

    .prologue
    .line 1088
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] nfcIntentDetected() : intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 818
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->OnOrientationChanged(I)V

    .line 819
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Remote;->_SetOrientationIndicator(I)V

    .line 820
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/Remote;->_CheckOrientationForRemocon(IZ)V

    .line 821
    return-void
.end method

.method public OnPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 376
    const-string v0, "Remote"

    const-string v1, "[Remote] OnPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoPreferenceUpdate()V

    .line 379
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->CommandStopPreview()V

    .line 381
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setCameraPause(Z)V

    .line 386
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateImageSaveDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dismissDialog()V

    .line 388
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->remocon_image_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    if-eqz v0, :cond_4

    .line 392
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->IsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnFinishService()V

    .line 394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->dismissDialog()V

    .line 396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->OnFinishServiceReady()V

    .line 398
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_2

    .line 399
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 401
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPreRemoconOrientation(I)V

    .line 405
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->connection_fail:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    if-eqz v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->OnDisableForeground()V

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    if-eqz v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->OnReleaseNfcBeamInterface()V

    .line 416
    iput-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mNFCBeamShare:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 418
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 420
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    if-eqz v0, :cond_8

    .line 423
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->OnReleaseNfcEnabler()V

    .line 424
    iput-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcSwitch:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    .line 427
    :cond_8
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_RemoveAllMessage()V

    .line 429
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 431
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_UnRegisterRemoteToast()V

    .line 433
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnPause()V

    .line 434
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 436
    return-void
.end method

.method public OnPreCameraSwitch()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnPreCameraSwitch()V

    .line 357
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraPreChangeId()V

    .line 359
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CommandStartPreview()V

    .line 361
    :cond_0
    return-void
.end method

.method public OnReadNdefEmptyMessage()V
    .locals 2

    .prologue
    .line 1078
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] OnReadNdefEmptyMessage()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public OnReadNdefMessages([Landroid/nfc/NdefMessage;)V
    .locals 4
    .parameter "messages"

    .prologue
    .line 1068
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] OnReadNdefMessages()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 1071
    .local v0, messagePayload:[B
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] OnReadNdefMessages : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote;->mNdefMessages:[Landroid/nfc/NdefMessage;

    .line 1074
    return-void
.end method

.method public OnReadNonNdefMessage()V
    .locals 2

    .prologue
    .line 1083
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] OnReadNonNdefMessage()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public OnRemoconFlashModeChange(Ljava/lang/String;)V
    .locals 3
    .parameter "flashMode"

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->OnHideMenuContainer()V

    .line 1907
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconFlashMode(Z)V

    .line 1908
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalFlashMode(Ljava/lang/String;)V

    .line 1909
    const-string v0, "RemoteShot"

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] OnRemoconFlashModeChange() :: isRemoconFlashMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFlashMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1911
    const-string v2, ", originalFlashMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoconFlashChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1909
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_flash_mode_camera"

    invoke-static {v0, v1, p1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_flash_mode_camera"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 1917
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Remote;->SetUpdateParameter(J)V

    .line 1920
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->Start()V

    .line 1923
    :cond_0
    return-void
.end method

.method public OnRemoteCameraZoomValueChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1998
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] doRemoteCameraZoomValueChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->SetZoomValueIndex(I)V

    .line 2000
    return-void
.end method

.method public OnResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 326
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnResume()V

    .line 327
    const-string v0, "Remote"

    const-string v1, "[Remote] OnResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CheckInitServiceTerminated()V

    .line 330
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getIntentProcessed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setIntentProcessed(Z)V

    .line 334
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->OnProcessIntent()V

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_InitNFCDialogShow()V

    .line 339
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_InitNFCTutorialShow()V

    .line 340
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_InitNFCBeamInterface()V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isCameraPause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Remote;->bRestartActivity:Z

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setCameraPause(Z)V

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_RegisterRemoteToast()V

    .line 352
    return-void

    .line 346
    :cond_2
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Remote;->bRestartActivity:Z

    goto :goto_0
.end method

.method public OnSnapShotDone()V
    .locals 3

    .prologue
    .line 1807
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doSnapShotDone()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1809
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1810
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FILE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetRemoconPauseState(Z)V

    .line 1812
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x4b

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1816
    :cond_0
    return-void
.end method

.method public OnSnapShotSend()V
    .locals 3

    .prologue
    .line 1819
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] doSnapShotSend()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    .line 1821
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRequestSnapshot(Z)V

    .line 1823
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x4c

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1827
    :cond_0
    return-void
.end method

.method public OnStartTransService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 195
    const-string v2, "RemoteShot"

    const-string v3, "[Remote] startTransService() "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, transferService:Landroid/content/Intent;
    const-string v2, "SDKVersion"

    iget v3, p0, Lcom/pantech/app/vegacamera/Remote;->iSDKVersion:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v2, "method"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "hasAddress"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v2, "issender"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const-string v2, "filename"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getBindedService()Z

    move-result v2

    if-nez v2, :cond_2

    .line 207
    const-string v2, "RemoteShot"

    const-string v3, "[Remote] startTransService() : RemoteTransferServiceWFD ~~~~~~~~~~~~~~~~"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, bindIntent:Landroid/content/Intent;
    const-string v2, "RemoteShot"

    const-string v3, "[Remote] startTransService() : bindService ~~~~~~~~~~~~~~~~"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 214
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DialogAllState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->connecting_text:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->ShowWaitingDialog(Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBindedService(Z)V

    .line 223
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setServiceStarted(Z)V

    .line 224
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setServerConnected(Z)V

    .line 225
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    .line 226
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBlockBackPressforRemocon(Z)V

    .line 228
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mNfcDetector:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->OnEnableForeground()V

    .line 232
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public OnStop()V
    .locals 0

    .prologue
    .line 441
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnStop()V

    .line 442
    return-void
.end method

.method public OnStopInitService()V
    .locals 3

    .prologue
    .line 1341
    const-string v1, "RemoteShot"

    const-string v2, "[Remote] [CHECK_WFD] stopInitService()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.vegacamera.remoteshot.RemoteInitService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->stopService(Landroid/content/Intent;)Z

    .line 1344
    return-void
.end method

.method public OnUserInteraction()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public OperCapture(II)V
    .locals 7
    .parameter "what"
    .parameter "count"

    .prologue
    .line 751
    const-string v0, "Remote"

    const-string v1, "[Remote] OperCapture :: what, count"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    packed-switch p1, :pswitch_data_0

    .line 771
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 754
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 755
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;ILandroid/os/Handler;Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 756
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/ICapture;->setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V

    .line 757
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    goto :goto_0

    .line 760
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 761
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->OnShutterButtonLongPressed(Z)V

    goto :goto_0

    .line 765
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onStop()V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OperFocus(I)V
    .locals 4
    .parameter "what"

    .prologue
    const/4 v3, 0x1

    .line 775
    const-string v1, "Remote"

    const-string v2, "[Remote] OperFocus"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 782
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 783
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mAutoFocusCallBack:Lcom/pantech/app/vegacamera/Remote$_AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 784
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0

    .line 789
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Remote"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remote] OperFocus cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 801
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 806
    :pswitch_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 809
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopFaceDetection()V

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 563
    return-void
.end method

.method public SendMessageGotoQuickView()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public SetIsNFCEnable(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 946
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] setIsNFCEnable() : set = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Remote;->bIsNfcEnable:Z

    .line 948
    return-void
.end method

.method public SetOperHandler(I)V
    .locals 4
    .parameter "what"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 825
    const-string v0, "Remote"

    const-string v1, "[Remote] OperCapture :: what"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    sparse-switch p1, :sswitch_data_0

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 828
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const-string v1, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->CheckServiceRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->IsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateTimerDialog:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->dismissDialog()V

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 836
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRotateAlertDialog:Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateAlertDialog;->dismissDialog()V

    .line 838
    :cond_2
    iput v3, p0, Lcom/pantech/app/vegacamera/Remote;->iDialogMode:I

    .line 840
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->remocon_warning_title:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->remocon_camcorder_warning_msg:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-direct {p0, v3, v0, v1}, Lcom/pantech/app/vegacamera/Remote;->_ShowAlertDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 842
    iput p1, p0, Lcom/pantech/app/vegacamera/Remote;->iHandlerMessage:I

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->_ClearLayoutAll()V

    .line 846
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->_MenuContainerClear()V

    .line 847
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Stop()V

    .line 849
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->HideNfcHelp()V

    .line 850
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->SetOperHandler(I)V

    goto :goto_0

    .line 855
    :sswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopSmoothZoom()V

    goto :goto_0

    .line 859
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/Remote;->_SetZoomControl(IZ)V

    .line 860
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iZoomValue:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Remote;->_UpdateRemoteZoomVoiceControl(I)V

    goto :goto_0

    .line 864
    :sswitch_3
    invoke-virtual {p0, v2, v2}, Lcom/pantech/app/vegacamera/Remote;->_SetZoomControl(IZ)V

    .line 865
    iget v0, p0, Lcom/pantech/app/vegacamera/Remote;->iZoomValue:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Remote;->_UpdateRemoteZoomVoiceControl(I)V

    goto/16 :goto_0

    .line 826
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x24 -> :sswitch_1
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch
.end method

.method public SetSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 745
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->SetSingleTapUpListener(Landroid/view/View;)V

    .line 746
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote;->mTapView:Landroid/view/View;

    .line 747
    return-void
.end method

.method protected _CloseRemoteShotOnly()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 687
    :cond_0
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Remote;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 553
    return-void
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->remote:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 273
    return-void
.end method

.method protected _InitRemote()V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getSDKVersion()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Remote;->iSDKVersion:I

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bIsNfcEnable:Z

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Remote;->bIsWiFiEnable:Z

    .line 281
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_SetLayout()V

    .line 282
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_InitialRemoteObject()V

    .line 283
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_InitialRemoteConfiguration()V

    .line 284
    return-void
.end method

.method protected _IsLowMagnification()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method protected _KeepIdleTimerOnAwhile()V
    .locals 0

    .prologue
    .line 1255
    return-void
.end method

.method protected _SetPreviewCallBack()V
    .locals 2

    .prologue
    .line 667
    const-string v0, "Remote"

    const-string v1, "[Remote] _SetPreviewCallBack()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote;->mPreviewCallback:Lcom/pantech/app/vegacamera/Remote$_CameraPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 669
    return-void
.end method

.method protected _UpdateActRemoteZoomParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 567
    const-string v0, "Remote"

    const-string v1, "[Remote] _UpdateActRemoteZoomParameters() :: pantech-remote - ON"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-remote"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 679
    const-string v0, "snapshot-burst-num"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method protected _UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method protected _UpdatePreferenceRemoteOnly()V
    .locals 2

    .prologue
    .line 673
    const-string v0, "Remote"

    const-string v1, "[Remote] _UpdatePreferenceRemoteOnly()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CommandStartPreview()V

    .line 675
    return-void
.end method

.method protected _UpdateRemoteDataFlash(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetCameraId()I

    move-result v0

    if-nez v0, :cond_1

    .line 609
    const-string v0, "Remote"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] originalFlashMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changedFlashMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 610
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemoconFlashMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFlashMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalFlashMode(Ljava/lang/String;)V

    .line 614
    :cond_0
    const-string v0, "Remote"

    const-string v1, "[Remote] Flash Mode Change Handler Send"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalFlashMode(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconFlashMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_CameraFlashModeChange()V

    .line 621
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoPreferenceUpdate()V

    .line 624
    :cond_1
    return-void

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setRemoconFlashMode(Z)V

    goto :goto_0
.end method

.method protected _UpdateRemoteDataPictureSize(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalPictureSize()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalPictureSize(Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getOriginalPictureSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    const-string v0, "Remote"

    const-string v1, "[Remote] PictureSize Change Handler Send"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setOriginalPictureSize(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Remote;->_CameraPictureSizeChange(Ljava/lang/String;)V

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Remote;->_DoPreferenceUpdate()V

    .line 598
    :cond_2
    return-void
.end method

.method protected _UpdateRemoteZoomValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setZoomValue(I)V

    .line 630
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "[Remote] ZoomControl() :: GetZoomBarPressed() :: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->GetZoomBarMultiPressed()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->GetZoomBarMultiPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    .line 636
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->GetZoomBarPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 640
    :cond_1
    return-void
.end method
