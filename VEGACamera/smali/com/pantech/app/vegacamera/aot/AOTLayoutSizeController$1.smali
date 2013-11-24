.class Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;
.super Ljava/lang/Object;
.source "AOTLayoutSizeController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 79
    :pswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChangeStart()V

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    #calls: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setStartPoint(FF)V
    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$1(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;FF)V

    .line 82
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->aot_knob_press:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mX:F
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$2(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)F

    move-result v3

    sub-float v0, v2, v3

    .line 87
    .local v0, deltaX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mY:F
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$3(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)F

    move-result v3

    sub-float v1, v2, v3

    .line 88
    .local v1, deltaY:F
    const-string v2, "AOTLayoutSizeControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[LayoutSize] delta X : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , delta Y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChange(FF)V

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    #calls: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setStartPoint(FF)V
    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$1(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;FF)V

    goto/16 :goto_0

    .line 96
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    :pswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChangeFinish()V

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->aot_knob_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setStartPoint(FF)V
    invoke-static {v2, v4, v4}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->access$1(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;FF)V

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
