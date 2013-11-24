.class Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;
.super Lcom/pantech/app/vegacamera/bridge/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

.field private mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge;-><init>()V

    return-void
.end method

.method private _NotifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 1046
    :cond_0
    return-void
.end method

.method private _SetSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 1040
    :cond_0
    return-void
.end method

.method private _SwitchToQuickView(I)V
    .locals 1
    .parameter "showView_MS"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;->switchToQuickView(I)V

    .line 1034
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->_SwitchToQuickView(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->_SetSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->_NotifyScreenNailChanged()V

    return-void
.end method


# virtual methods
.method public attachScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 3

    .prologue
    .line 948
    const-string v1, "ActivityBase"

    const-string v2, "[ActivityBase :: MyAppBridge]  attachScreenNail"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-nez v1, :cond_0

    .line 950
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 951
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 957
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    return-object v1

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->placeholder_empty:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 954
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/StaticBitmapScreenNail;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/StaticBitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_0
.end method

.method public detachScreenNail()V
    .locals 2

    .prologue
    .line 962
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase :: MyAppBridge]  detachScreenNail"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 965
    return-void
.end method

.method public getCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 2

    .prologue
    .line 968
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase :: MyAppBridge]  getCameraScreenNail"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    return-object v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsPanoramaModule()Z

    move-result v0

    return v0
.end method

.method public isStaticCamera()Z
    .locals 1

    .prologue
    .line 1027
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCaptureAnimationEnded()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->OnCaptureAnimationEnded()V

    .line 1007
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->OnCaptureTextureCopied()V

    .line 1002
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->OnFullScreenChanged(Z)V

    .line 991
    return-void
.end method

.method public onLongPress(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #calls: Lcom/pantech/app/vegacamera/ActivityBase;->_OnLongPress(II)V
    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->access$7(Lcom/pantech/app/vegacamera/ActivityBase;II)V

    .line 984
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 995
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase :: MyAppBridge] onPreviewTextureCopied"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->OnPreviewTextureCopied()V

    .line 997
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #calls: Lcom/pantech/app/vegacamera/ActivityBase;->onSingleTapUp(II)Z
    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->access$6(Lcom/pantech/app/vegacamera/ActivityBase;II)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestRenderForced()V

    .line 1017
    return-void
.end method

.method public setServer(Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1021
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase :: MyAppBridge] setServer"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->mServer:Lcom/pantech/app/vegacamera/bridge/app/AppBridge$Server;

    .line 1023
    return-void
.end method
