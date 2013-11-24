.class public Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
.super Ljava/lang/Object;
.source "RemoteCameraData.java"


# static fields
.field private static volatile mRemoteDataInstance:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;


# instance fields
.field private backPressedCnt:I

.field private bindedService:Z

.field private blockBackPressforRemocon:Z

.field private cameraId:I

.field private cameraModeId:I

.field private changedFlashMode:Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

.field private fileName:Ljava/lang/String;

.field private focusVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private intentProcessed:Z

.field private isCameraPause:Z

.field private isRemoconFlashMode:Z

.field private isRemoconFocusResult:Z

.field private isRemoconFocusState:Z

.field private isRemoconFocusTouched:Z

.field private isRemoconReady:Z

.field private isRemoconSpotFocus:Z

.field private isRequestSnapshot:Z

.field private lastFilePath:Ljava/lang/String;

.field private mPhotoState:I

.field private mPrefInitNum:I

.field private mPrefInitOriginalNum:I

.field private menuBtn:Landroid/widget/ImageView;

.field private originalFlashMode:Ljava/lang/String;

.field private originalOrientation:I

.field private originalPictureSize:Ljava/lang/String;

.field private preRemoconOrientation:I

.field private serverConnected:Z

.field private serviceStarted:Z

.field private zoomMaxValue:I

.field private zoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mRemoteDataInstance:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalPictureSize:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRequestSnapshot:Z

    .line 23
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->contentResolver:Landroid/content/ContentResolver;

    .line 24
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconReady:Z

    .line 25
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isCameraPause:Z

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconSpotFocus:Z

    .line 28
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusState:Z

    .line 29
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusResult:Z

    .line 30
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusTouched:Z

    .line 31
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFlashMode:Z

    .line 32
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalFlashMode:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->changedFlashMode:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->preRemoconOrientation:I

    .line 36
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->bindedService:Z

    .line 37
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->serviceStarted:Z

    .line 38
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->serverConnected:Z

    .line 39
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->blockBackPressforRemocon:Z

    .line 40
    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->backPressedCnt:I

    .line 41
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->intentProcessed:Z

    .line 42
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->focusVector:Ljava/util/Vector;

    .line 45
    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->zoomValue:I

    .line 46
    const/16 v0, 0x3c

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->zoomMaxValue:I

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mRemoteDataInstance:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-nez v0, :cond_0

    .line 57
    const-class v1, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    monitor-enter v1

    .line 58
    :try_start_0
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mRemoteDataInstance:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mRemoteDataInstance:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBackPressedCnt()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->backPressedCnt:I

    return v0
.end method

.method public getBindedService()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->bindedService:Z

    return v0
.end method

.method public getBlockBackPressforRemocon()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->blockBackPressforRemocon:Z

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->cameraId:I

    return v0
.end method

.method public getCameraModeId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->cameraModeId:I

    return v0
.end method

.method public getChangedFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->changedFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->focusVector:Ljava/util/Vector;

    return-object v0
.end method

.method public getIntentProcessed()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->intentProcessed:Z

    return v0
.end method

.method public getLastFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->lastFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuBtn()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->menuBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOriginalFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalOrientation()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalOrientation:I

    return v0
.end method

.method public getOriginalPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalPictureSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoState()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mPhotoState:I

    return v0
.end method

.method public getPreRemoconOrientation()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->preRemoconOrientation:I

    return v0
.end method

.method public getPrefInitNum()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mPrefInitNum:I

    return v0
.end method

.method public getRemoconFlashMode()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFlashMode:Z

    return v0
.end method

.method public getRemoconFocusResult()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusResult:Z

    return v0
.end method

.method public getRemoconFocusState()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusState:Z

    return v0
.end method

.method public getRemoconFocusTouched()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusTouched:Z

    return v0
.end method

.method public getRemoconReady()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconReady:Z

    return v0
.end method

.method public getRemoconSpotFocus()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconSpotFocus:Z

    return v0
.end method

.method public getRequestSnapshot()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRequestSnapshot:Z

    return v0
.end method

.method public getServerConnected()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->serverConnected:Z

    return v0
.end method

.method public getServiceStarted()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->serviceStarted:Z

    return v0
.end method

.method public getZoomMaxValue()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->zoomMaxValue:I

    return v0
.end method

.method public getZoomValue()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->zoomValue:I

    return v0
.end method

.method public getmPrefInitOriginalNum()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mPrefInitOriginalNum:I

    return v0
.end method

.method public isCameraPause()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isCameraPause:Z

    return v0
.end method

.method public setBackPressedCnt(I)V
    .locals 0
    .parameter "backPressedCnt"

    .prologue
    .line 173
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->backPressedCnt:I

    .line 174
    return-void
.end method

.method public setBindedService(Z)V
    .locals 0
    .parameter "bindedService"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->bindedService:Z

    .line 142
    return-void
.end method

.method public setBlockBackPressforRemocon(Z)V
    .locals 0
    .parameter "blockBackPressforRemocon"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->blockBackPressforRemocon:Z

    .line 166
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 310
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->cameraId:I

    .line 311
    return-void
.end method

.method public setCameraModeId(I)V
    .locals 0
    .parameter "cameraModeId"

    .prologue
    .line 117
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->cameraModeId:I

    .line 118
    return-void
.end method

.method public setCameraPause(Z)V
    .locals 0
    .parameter "isCameraPause"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isCameraPause:Z

    .line 70
    return-void
.end method

.method public setChangedFlashMode(Ljava/lang/String;)V
    .locals 0
    .parameter "changedFlashMode"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->changedFlashMode:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->contentResolver:Landroid/content/ContentResolver;

    .line 270
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->fileName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setFocusVector(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, focusVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->focusVector:Ljava/util/Vector;

    .line 126
    return-void
.end method

.method public setIntentProcessed(Z)V
    .locals 0
    .parameter "intentProcessed"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->intentProcessed:Z

    .line 134
    return-void
.end method

.method public setLastFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "lastFilePath"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->lastFilePath:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setMenuBtn(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "menuBtn"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->menuBtn:Landroid/widget/ImageView;

    .line 254
    return-void
.end method

.method public setOriginalFlashMode(Ljava/lang/String;)V
    .locals 0
    .parameter "originalFlashMode"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalFlashMode:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setOriginalOrientation(I)V
    .locals 0
    .parameter "originalOrientation"

    .prologue
    .line 109
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalOrientation:I

    .line 110
    return-void
.end method

.method public setOriginalPictureSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->originalPictureSize:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setPhotoState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 318
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mPhotoState:I

    .line 319
    return-void
.end method

.method public setPreRemoconOrientation(I)V
    .locals 0
    .parameter "preRemoconOrientation"

    .prologue
    .line 189
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->preRemoconOrientation:I

    .line 190
    return-void
.end method

.method public setPrefInitNum(I)V
    .locals 0
    .parameter "mPrefInitNum"

    .prologue
    .line 85
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mPrefInitNum:I

    .line 86
    return-void
.end method

.method public setRemoconFlashMode(Z)V
    .locals 0
    .parameter "isRemoconFlashMode"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFlashMode:Z

    .line 214
    return-void
.end method

.method public setRemoconFocusResult(Z)V
    .locals 0
    .parameter "isRemoconFocusResult"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusResult:Z

    .line 230
    return-void
.end method

.method public setRemoconFocusState(Z)V
    .locals 0
    .parameter "isRemoconFocusState"

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusState:Z

    .line 246
    return-void
.end method

.method public setRemoconFocusTouched(Z)V
    .locals 0
    .parameter "isRemoconFocusTouched"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconFocusTouched:Z

    .line 222
    return-void
.end method

.method public setRemoconReady(Z)V
    .locals 0
    .parameter "isRemoconReady"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconReady:Z

    .line 182
    return-void
.end method

.method public setRemoconSpotFocus(Z)V
    .locals 0
    .parameter "isRemoconSpotFocus"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRemoconSpotFocus:Z

    .line 238
    return-void
.end method

.method public setRequestSnapshot(Z)V
    .locals 0
    .parameter "isRequestSnapshot"

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isRequestSnapshot:Z

    .line 286
    return-void
.end method

.method public setServerConnected(Z)V
    .locals 0
    .parameter "serverConnected"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->serverConnected:Z

    .line 158
    return-void
.end method

.method public setServiceStarted(Z)V
    .locals 0
    .parameter "serviceStarted"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->serviceStarted:Z

    .line 150
    return-void
.end method

.method public setZoomMaxValue(I)V
    .locals 0
    .parameter "zoomMaxValue"

    .prologue
    .line 101
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->zoomMaxValue:I

    .line 102
    return-void
.end method

.method public setZoomValue(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 93
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->zoomValue:I

    .line 94
    return-void
.end method

.method public setmPrefInitOriginalNum(I)V
    .locals 0
    .parameter "mPrefInitOriginalNum"

    .prologue
    .line 77
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->mPrefInitOriginalNum:I

    .line 78
    return-void
.end method
