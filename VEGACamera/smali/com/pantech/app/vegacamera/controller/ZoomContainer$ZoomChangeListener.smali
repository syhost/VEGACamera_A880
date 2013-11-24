.class Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;
.super Ljava/lang/Object;
.source "ZoomContainer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ZoomContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/ZoomContainer;Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;-><init>(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)V

    return-void
.end method


# virtual methods
.method public OnZoomBarTouchEvent(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #setter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bZoomBarTouched:Z
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$7(Lcom/pantech/app/vegacamera/controller/ZoomContainer;Z)V

    .line 154
    return-void
.end method

.method public OnZoomStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$1(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-nez p1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomMax:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$2(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)I

    move-result v1

    #calls: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->_ZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$0(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V

    goto :goto_0

    .line 137
    :cond_2
    if-ne p1, v2, :cond_3

    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    const/4 v1, 0x0

    #calls: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->_ZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$0(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    const/4 v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$3(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$4(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    const/4 v1, 0x2

    #setter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$5(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$6(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$6(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;->OnStopSmoothZoom()V

    goto :goto_0
.end method

.method public OnZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;->this$0:Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    #calls: Lcom/pantech/app/vegacamera/controller/ZoomContainer;->_ZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->access$0(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V

    .line 126
    return-void
.end method
