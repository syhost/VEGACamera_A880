.class public Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;
.source "EffectRecordLayoutControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;
    }
.end annotation


# static fields
.field private static final HANDLE_STOP_BUTTON_VISIBLE:I


# instance fields
.field private hEffectRecordLayout_Handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 12
    new-instance v0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;-><init>(Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->hEffectRecordLayout_Handler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->ID_RECORD_STOP_SHUTTER:I

    if-ne v0, v1, :cond_1

    .line 29
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->_SetLayoutVisible(II)V

    .line 30
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->_VideoRecordStopOper()V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->ID_RECORD_CAPTURE:I

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->_VideoRecordCaptureOper()V

    goto :goto_0
.end method

.method public Start()V
    .locals 4

    .prologue
    .line 20
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Start()V

    .line 21
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->_SetLayoutVisible(II)V

    .line 22
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->hEffectRecordLayout_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    return-void
.end method
