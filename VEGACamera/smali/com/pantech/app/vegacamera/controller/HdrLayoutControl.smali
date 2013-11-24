.class public Lcom/pantech/app/vegacamera/controller/HdrLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;
.source "HdrLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 10
    return-void
.end method


# virtual methods
.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 19
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/HdrLayoutControl;->_ActionVR(I)V

    .line 21
    return-void
.end method

.method public _ColorExtCtlInit()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method protected _LongPressedCapture(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/HdrLayoutControl;->_FocusContainerFocusStart(I)V

    .line 27
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/HdrLayoutControl;->_ShutterButtonClick()V

    .line 29
    :cond_0
    return-void
.end method
