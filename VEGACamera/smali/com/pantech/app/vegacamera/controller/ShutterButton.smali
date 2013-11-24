.class public Lcom/pantech/app/vegacamera/controller/ShutterButton;
.super Lcom/pantech/app/vegacamera/ui/RotateImageView;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;,
        Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutterButton"


# instance fields
.field private _LongClick:Z

.field private _PerformClick:Z

.field private _bOldPressed:Z

.field private mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

.field private mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z

    .line 15
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_bOldPressed:Z

    .line 17
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    .line 18
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    .line 32
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 34
    return-void
.end method

.method private _CallShutterButtonFocus(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 135
    const-string v0, "ShutterButton"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_CallShutterButtonFocus( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;->OnShutterButtonFocus(Lcom/pantech/app/vegacamera/controller/ShutterButton;Z)V

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/ShutterButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/ShutterButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_CallShutterButtonFocus(Z)V

    return-void
.end method


# virtual methods
.method public Release()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public SetOnShutterButtonListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    .line 38
    return-void
.end method

.method public SetOnShutterButtonLongPressListener(Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    .line 42
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawableStateChanged()V

    .line 50
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isPressed()Z

    move-result v0

    .line 52
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_bOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 53
    const-string v1, "ShutterButton"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawableStateChanged() :: pressed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez v0, :cond_2

    .line 77
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    if-eqz v1, :cond_1

    .line 78
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    .line 79
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v1, v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;->OnShutterButtonLongPressed(Z)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v1, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton$1;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 97
    :goto_1
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_bOldPressed:Z

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z

    .line 95
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_CallShutterButtonFocus(Z)V

    goto :goto_1
.end method

.method public isLongPressed()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mLongPressListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonLongPressListener;->OnShutterButtonLongPressed(Z)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_LongClick:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->performClick()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z

    .line 109
    const-string v0, "ShutterButton"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performClick() :: result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/controller/ShutterButton$OnShutterButtonListener;->OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterButton;->_PerformClick:Z

    goto :goto_0
.end method
