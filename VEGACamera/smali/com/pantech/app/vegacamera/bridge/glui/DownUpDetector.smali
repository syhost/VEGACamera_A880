.class public Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;

.field private mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;

    .line 33
    return-void
.end method

.method private setState(ZLandroid/view/MotionEvent;)V
    .locals 1
    .parameter "down"
    .parameter "e"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->mStillDown:Z

    .line 39
    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;

    invoke-interface {v0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;

    invoke-interface {v0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->mStillDown:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    return-void

    .line 49
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
