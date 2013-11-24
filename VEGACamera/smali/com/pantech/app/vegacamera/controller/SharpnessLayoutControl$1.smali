.class Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;
.super Ljava/lang/Object;
.source "SharpnessLayoutControl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->_InitLocalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStartSmoothZoom(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 76
    return-void
.end method

.method public OnStopSmoothZoom()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public SetZoomParammeter(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 58
    add-int/lit16 p1, p1, -0xff

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;->this$0:Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->Sky_ctrl_drv:Lcom/pantech/test/Sky_ctrl_drv;

    invoke-virtual {v0, p1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Set_Sharpness(I)I

    .line 64
    return-void
.end method
