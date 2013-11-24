.class Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onLongPress(FF)V

    .line 105
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    return v0
.end method
