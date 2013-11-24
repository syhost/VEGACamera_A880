.class Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideCameraAppView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGotoQuickViewDialog()Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGotoQuickViewDialog()Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 781
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 783
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 787
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 791
    return-void
.end method
