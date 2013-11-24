.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$9;
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$9;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 874
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$9;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$12(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$9;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$13(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 875
    return-void
.end method
