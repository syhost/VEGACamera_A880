.class Lcom/pantech/app/vegacamera/util/PerformanceView$1;
.super Ljava/lang/Object;
.source "PerformanceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/util/PerformanceView;->append(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/util/PerformanceView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/util/PerformanceView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/util/PerformanceView$1;->this$0:Lcom/pantech/app/vegacamera/util/PerformanceView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/PerformanceView$1;->this$0:Lcom/pantech/app/vegacamera/util/PerformanceView;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/util/PerformanceView$1;->this$0:Lcom/pantech/app/vegacamera/util/PerformanceView;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/util/PerformanceView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/PerformanceView$1;->this$0:Lcom/pantech/app/vegacamera/util/PerformanceView;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/util/PerformanceView$1;->this$0:Lcom/pantech/app/vegacamera/util/PerformanceView;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 47
    return-void
.end method
