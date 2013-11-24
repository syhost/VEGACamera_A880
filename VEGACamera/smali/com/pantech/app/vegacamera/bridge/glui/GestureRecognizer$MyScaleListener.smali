.class Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onScale(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onScaleEnd()V

    .line 122
    return-void
.end method
