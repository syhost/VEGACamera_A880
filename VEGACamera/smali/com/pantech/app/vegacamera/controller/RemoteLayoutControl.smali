.class public Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "RemoteLayoutControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;
    }
.end annotation


# static fields
.field private static final REMOCON_ORIENTATION_LANDSCAPE_0:I = 0x0

.field private static final REMOCON_ORIENTATION_LANDSCAPE_180:I = 0xb4

.field private static final REMOCON_ORIENTATION_PORTRAIT_270:I = 0x10e

.field private static final REMOCON_ORIENTATION_PORTRAIT_90:I = 0x5a

.field private static final TUTO_FIRST_LAND_LAYOUT:I

.field private static final TUTO_FIRST_PORTRAIT_LAYOUT:I

.field private static final TUTO_SECOND_LAND_LAYOUT:I

.field private static final TUTO_SECOND_PORTRAIT_LAYOUT:I

.field private static final TUTO_THIRD_LAND_LAYOUT:I

.field private static final TUTO_THIRD_PORTRAIT_LAYOUT:I


# instance fields
.field private firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

.field private firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

.field private iCameraOrientationCheck:I

.field private iTutoMode:I

.field private iTutorialDegree:I

.field private mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

.field private mZoomBarMultiTouched:Z

.field private secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

.field private secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

.field private thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

.field private thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_first_portrait_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_FIRST_PORTRAIT_LAYOUT:I

    .line 23
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_first_land_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_FIRST_LAND_LAYOUT:I

    .line 24
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_second_portrait_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_SECOND_PORTRAIT_LAYOUT:I

    .line 25
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_second_land_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_SECOND_LAND_LAYOUT:I

    .line 26
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_third_portrait_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_THIRD_PORTRAIT_LAYOUT:I

    .line 27
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_third_land_layout:I

    sput v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_THIRD_LAND_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 2
    .parameter "act"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 30
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 31
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 32
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 33
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 34
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 36
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 38
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mZoomBarMultiTouched:Z

    .line 39
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    .line 40
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    .line 45
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getInstance()Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 46
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ControlBarInit()V

    .line 101
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ControlBarRemoteTipsInit()V

    .line 102
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_InformationAreaInit()V

    .line 103
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_RemoteShutterButtonInit()V

    .line 104
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_StartVoiceRecognizer()V

    .line 105
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ZoomButtonInit()V

    .line 106
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_NfcHelpLayoutInit()V

    .line 107
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_BackTouchInit()V

    .line 108
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_GridLayoutInit()V

    .line 109
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_InitRemoteTutorial()V

    .line 110
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowRemoteHelpTutorialAfterPause()V

    .line 111
    return-void
.end method

.method private _InitRemoteTutorial()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 329
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_FIRST_PORTRAIT_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 330
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->Init()V

    .line 332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V

    .line 334
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_SECOND_PORTRAIT_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 335
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->Init()V

    .line 336
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V

    .line 339
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_THIRD_PORTRAIT_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->Init()V

    .line 341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V

    .line 344
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_FIRST_LAND_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 345
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->Init()V

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V

    .line 349
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_SECOND_LAND_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 350
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->Init()V

    .line 352
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V

    .line 354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->TUTO_THIRD_LAND_LAYOUT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->Init()V

    .line 357
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;-><init>(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl$TutorialManagerListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V

    .line 359
    return-void
.end method

.method private _ReleaseAllTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_0

    .line 391
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_1

    .line 393
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    .line 395
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_3

    .line 397
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_4

    .line 399
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_5

    .line 401
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    .line 403
    :cond_5
    return-void
.end method

.method private _ShowTutorial(III)V
    .locals 5
    .parameter "orientation"
    .parameter "tutorialPage"
    .parameter "degree"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 433
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteLayoutControl] showTutorial() :: orientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    const-string v2, ", tutorialPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", degree : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    if-nez p1, :cond_3

    .line 440
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteLayoutControl] showTutorial :: ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-eq p2, v0, :cond_0

    .line 443
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne p2, v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    .line 452
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 453
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->invalidate()V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne p2, v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    .line 465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 466
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_2
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne p2, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    .line 477
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 478
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 483
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteLayoutControl] showTutorial :: ORIENTATION_LANDSCAPE : tutorialPage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-ne p2, v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 488
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    goto/16 :goto_0

    .line 491
    :cond_4
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne p2, v0, :cond_5

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    .line 500
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 501
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->invalidate()V

    goto/16 :goto_0

    .line 504
    :cond_5
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne p2, v0, :cond_6

    .line 506
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    .line 513
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 514
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 516
    :cond_6
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne p2, v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->showTutorial(I)V

    .line 525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, p3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setOrientation(I)V

    .line 526
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private _TutorialControlSettingPref()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    const-string v1, "Pref_init_nfc_tutorial"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 408
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setmPrefInitOriginalNum(I)V

    .line 410
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_TutorialControlSettingPref()V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;)Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    return-object v0
.end method


# virtual methods
.method public GetTutoMode()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    return v0
.end method

.method public GetZoomBarMultiPressed()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mZoomBarMultiTouched:Z

    return v0
.end method

.method public GetZoomBarPressed()Z
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, state:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->GetZoomBarPressed()Z

    move-result v0

    .line 225
    :cond_0
    return v0
.end method

.method public IsRemoteTutorialVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 414
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnHideMenuContainer()V
    .locals 0

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ActOnBackPressed()Z

    .line 584
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10e

    const/16 v3, 0xb4

    const/16 v1, 0x5a

    const/4 v2, 0x1

    .line 161
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnOrientationChanged(I)V

    .line 163
    if-nez p1, :cond_3

    .line 164
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    if-eqz v0, :cond_2

    .line 176
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    if-ne v0, v1, :cond_8

    .line 177
    :cond_1
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    .line 178
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-ne v0, v2, :cond_6

    .line 179
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v0, v1, :cond_6

    .line 180
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    .line 209
    :cond_2
    :goto_1
    return-void

    .line 165
    :cond_3
    if-ne p1, v1, :cond_4

    .line 166
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    goto :goto_0

    .line 167
    :cond_4
    if-ne p1, v3, :cond_5

    .line 168
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    goto :goto_0

    .line 169
    :cond_5
    if-ne p1, v4, :cond_0

    .line 170
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    goto :goto_0

    .line 182
    :cond_6
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-ne v0, v2, :cond_7

    .line 183
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v0, v1, :cond_7

    .line 184
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    goto :goto_1

    .line 186
    :cond_7
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-ne v0, v2, :cond_2

    .line 187
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v0, v1, :cond_2

    .line 188
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    goto :goto_1

    .line 191
    :cond_8
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    if-eqz v0, :cond_9

    .line 192
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    if-ne v0, v3, :cond_2

    .line 193
    :cond_9
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    .line 195
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-ne v0, v2, :cond_a

    .line 196
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v0, v1, :cond_a

    .line 197
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    goto :goto_1

    .line 199
    :cond_a
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-ne v0, v2, :cond_b

    .line 200
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v0, v1, :cond_b

    .line 201
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    goto :goto_1

    .line 203
    :cond_b
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-ne v0, v2, :cond_2

    .line 204
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v0, v1, :cond_2

    .line 205
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    goto :goto_1
.end method

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 541
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ActionVR(I)V

    .line 543
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_REMOTE_SHUTTER:I

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_FocusContainerDoSnap()V

    .line 157
    :cond_0
    return-void
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 5
    .parameter "pressed"

    .prologue
    const/16 v0, 0x10

    const/16 v4, 0xf

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 547
    if-eqz p1, :cond_3

    .line 548
    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetListnerClickAble(IZ)V

    .line 549
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_MenuContainerClear()V

    .line 550
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 551
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetListnerClickAble(IZ)V

    .line 552
    invoke-virtual {p0, v4, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 553
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetListnerClickAble(IZ)V

    .line 554
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 555
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/16 v0, 0x17

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_FocusContainerFocusStart(I)V

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShutterButtonClick()V

    .line 575
    :cond_2
    :goto_0
    return-void

    .line 564
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_MenuContainerShow()V

    .line 565
    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetListnerClickAble(IZ)V

    .line 566
    invoke-virtual {p0, v2, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 567
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetListnerClickAble(IZ)V

    .line 568
    invoke-virtual {p0, v4, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 569
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetListnerClickAble(IZ)V

    .line 570
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 571
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRemoconReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    const/16 v0, 0x17

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method

.method public RemoveAllTutorial()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 363
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->firstLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 367
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->secondLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 372
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v0, v1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdPortraitTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->thirdLandTutor:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisibility(I)V

    .line 386
    :cond_2
    return-void
.end method

.method public SetTutoMode(I)V
    .locals 0
    .parameter "iTutoMode"

    .prologue
    .line 536
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    .line 537
    return-void
.end method

.method public SetZoomBarMultiPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mZoomBarMultiTouched:Z

    .line 237
    return-void
.end method

.method public SetZoomValueIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/16 v2, 0x11

    .line 229
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetZoomIndexForRemocon(I)V

    .line 231
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->SetZoomIndex(I)V

    .line 233
    :cond_0
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_InitLocalLayout()V

    .line 150
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_InitLocalLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_MenuContainerStart()V

    .line 117
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_FocusContainerStart()V

    .line 118
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/pantech/app/vegacamera/R$array;->remote_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteTipsLayout:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjNfcHelpLayout:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_REMOTE_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteTips:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetFocusAutoMode()V

    .line 97
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 133
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteShutter:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjNfcHelpLayout:Ljava/lang/Object;

    .line 135
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteTips:Ljava/lang/Object;

    .line 136
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteTipsLayout:Ljava/lang/Object;

    .line 137
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 138
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 139
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 140
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 141
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 142
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 143
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 144
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_LAYOUT_REMOTE_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteShutter:Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_LAYOUT_REMOTE_NFC_HELP:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjNfcHelpLayout:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_REMOTE_TIPS:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteTips:Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_LAYOUT_REMOTE_TIPS:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjRemoteTipsLayout:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 69
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _LongPressedCapture(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LongPressedCapture(Z)V

    .line 580
    return-void
.end method

.method public _MenuDisableMenuSwitchButton()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_MenuDisableMenuSwitchButton()V

    .line 249
    return-void
.end method

.method public _MenuEnableMenuSwitchButton()V
    .locals 0

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_MenuEnableMenuSwitchButton()V

    .line 245
    return-void
.end method

.method public _ShowRemoteHelpTutorial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    const-string v1, "Pref_init_nfc_tutorial"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setPrefInitNum(I)V

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setmPrefInitOriginalNum(I)V

    .line 270
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    .line 271
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    .line 273
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    .line 275
    return-void
.end method

.method public _ShowRemoteHelpTutorialAfterPause()V
    .locals 3

    .prologue
    .line 278
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteLayoutControl] _ShowRemoteHelpTutorialAfterPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutoMode:I

    if-eqz v0, :cond_0

    .line 280
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iCameraOrientationCheck:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->iTutorialDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowTutorial(III)V

    .line 282
    :cond_0
    return-void
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_MenuContainerStop()V

    .line 123
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 124
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_FocusContainerFocusReleased()V

    .line 125
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_StopVoiceRecognizer()V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->RemoveAllTutorial()V

    .line 127
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ReleaseAllTutorial()V

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->onClick(Landroid/view/View;)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->ID_REMOTE_TIPS:I

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_ShowRemoteHelpTutorial()V

    .line 262
    :cond_0
    return-void
.end method

.method public onRemoteServiceConnectedState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    const/16 v1, 0x17

    .line 212
    if-eqz p1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method
