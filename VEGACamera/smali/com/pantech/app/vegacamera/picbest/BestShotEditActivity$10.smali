.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$10;
.super Ljava/lang/Object;
.source "BestShotEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setScrollBarLocation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$10;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$10;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$14(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$10;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$13(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 883
    return-void
.end method
