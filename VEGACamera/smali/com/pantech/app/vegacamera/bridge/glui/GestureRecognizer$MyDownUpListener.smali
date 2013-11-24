.class Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onDown(FF)V

    .line 129
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;->onUp()V

    .line 134
    return-void
.end method
