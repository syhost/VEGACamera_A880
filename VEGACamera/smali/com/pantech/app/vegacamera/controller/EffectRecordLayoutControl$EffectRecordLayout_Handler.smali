.class Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;
.super Landroid/os/Handler;
.source "EffectRecordLayoutControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectRecordLayout_Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;->this$0:Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;-><init>(Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x8

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;->this$0:Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;->this$0:Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl$EffectRecordLayout_Handler;->this$0:Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/pantech/app/vegacamera/controller/EffectRecordLayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
