.class Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;
.super Ljava/lang/Object;
.source "SharpnessContainer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/SharpnessContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;-><init>(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)V

    return-void
.end method


# virtual methods
.method public OnZoomBarTouchEvent(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #setter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bZoomBarTouched:Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$7(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;Z)V

    .line 153
    return-void
.end method

.method public OnZoomStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$1(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-nez p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomMax:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$2(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)I

    move-result v1

    #calls: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->_ZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$0(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V

    goto :goto_0

    .line 136
    :cond_2
    if-ne p1, v2, :cond_3

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    const/4 v1, 0x0

    #calls: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->_ZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$0(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    const/4 v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$3(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V

    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$4(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    const/4 v1, 0x2

    #setter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$5(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$6(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$6(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;->OnStopSmoothZoom()V

    goto :goto_0
.end method

.method public OnZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    #calls: Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->_ZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->access$0(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V

    .line 125
    return-void
.end method
