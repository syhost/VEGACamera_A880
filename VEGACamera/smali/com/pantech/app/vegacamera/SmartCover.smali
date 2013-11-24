.class public Lcom/pantech/app/vegacamera/SmartCover;
.super Lcom/pantech/app/vegacamera/Photo;
.source "SmartCover.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCover"


# instance fields
.field private mCoverLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mCoverLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 14
    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mCoverLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method protected OnCreateCameraScreenNail()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 57
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mCoverLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 52
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "SmartCover"

    const-string v1, "[Cover] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/SmartCover;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mCoverLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/SmartCover;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/SmartCover;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/SmartCover;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/SmartCover;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 42
    return-void
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->smartcover:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    return-void
.end method

.method protected _InitSmartCoverLayoutParam()V
    .locals 5

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->gl_root_view:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/SmartCover;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->smartcover_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 23
    iget-object v3, p0, Lcom/pantech/app/vegacamera/SmartCover;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->smartcover_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 24
    const/16 v4, 0x10

    .line 22
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    return-void
.end method

.method protected _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 95
    const-string v0, "4"

    .line 96
    .local v0, value:Ljava/lang/String;
    const-string v1, "SmartCover"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hdr mode, ev is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/pantech/app/vegacamera/SmartCover;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 62
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 66
    const-string v0, "none"

    .line 67
    .local v0, value:Ljava/lang/String;
    const-string v1, "SmartCover"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cover mode, color tone is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 102
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "SmartCover"

    const-string v1, "[Cover] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/SmartCover;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 84
    const-string v0, "auto"

    .line 86
    .local v0, whiteBalance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 88
    const-string v1, "SmartCover"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Cover] set param wb = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
