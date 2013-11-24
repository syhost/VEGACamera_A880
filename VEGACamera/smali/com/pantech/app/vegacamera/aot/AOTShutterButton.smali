.class public Lcom/pantech/app/vegacamera/aot/AOTShutterButton;
.super Landroid/widget/ImageView;
.source "AOTShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;,
        Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;
    }
.end annotation


# static fields
.field private static final CALL_SHUTTER_BTN_FOCUS_PRESSED:I = 0x100000

.field private static final PERFORM_LONG_CLK_TIME:I = 0x1f4


# instance fields
.field private mHandler:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

.field private mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

.field private mOldpressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mHandler:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mHandler:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mHandler:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->longClickedShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;->onAOTShutterButtonFocus(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method private longClickedShutterButtonFocus(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    const/high16 v3, 0x10

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mHandler:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mHandler:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$MainHandler;->removeMessages(I)V

    .line 78
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public AOTShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;->onAOTShutterButtonFocus(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V

    .line 65
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 45
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->isPressed()Z

    move-result v0

    .line 47
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mOldpressed:Z

    if-eq v0, v1, :cond_0

    .line 48
    if-nez v0, :cond_1

    .line 49
    new-instance v1, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 57
    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mOldpressed:Z

    .line 59
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->longClickedShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 86
    .local v0, result:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;->onAOTShutterButtonClick(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;)V

    .line 90
    :cond_0
    return v0
.end method

.method public setOnAOTShutterButtonListener(Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->mListener:Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;

    .line 40
    return-void
.end method
