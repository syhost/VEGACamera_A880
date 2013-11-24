.class Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;
.super Ljava/lang/Object;
.source "SelfShotEditActivity.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ontouch(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$0(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 303
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_left:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$2(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_right:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$3(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_down:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$4(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_up:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$5(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
