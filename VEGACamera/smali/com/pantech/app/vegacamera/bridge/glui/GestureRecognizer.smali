.class public Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;,
        Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;,
        Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;,
        Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;
    }
.end annotation


# instance fields
.field private final mDownUpDetector:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    .line 59
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyGestureListener;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 60
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyScaleListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 61
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;

    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;

    invoke-direct {v1, p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$MyDownUpListener;)V

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mDownUpDetector:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;

    return-object v0
.end method


# virtual methods
.method public cancelScale()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 77
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v8}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 79
    return-void
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mDownUpDetector:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->mDownUpDetector:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 68
    return-void
.end method
