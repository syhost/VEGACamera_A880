.class Lcom/pantech/app/vegacamera/Panorama$9$1;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/vegacamera/Panorama$9;

.field private final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama$9;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->this$1:Lcom/pantech/app/vegacamera/Panorama$9;

    iput p2, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->val$progress:I

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1158
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->val$progress:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->this$1:Lcom/pantech/app/vegacamera/Panorama$9;

    #getter for: Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama$9;->access$0(Lcom/pantech/app/vegacamera/Panorama$9;)Lcom/pantech/app/vegacamera/Panorama;

    move-result-object v0

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$42(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->this$1:Lcom/pantech/app/vegacamera/Panorama$9;

    #getter for: Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama$9;->access$0(Lcom/pantech/app/vegacamera/Panorama$9;)Lcom/pantech/app/vegacamera/Panorama;

    move-result-object v0

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mSavingText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$43(Lcom/pantech/app/vegacamera/Panorama;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1164
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->this$1:Lcom/pantech/app/vegacamera/Panorama$9;

    #getter for: Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama$9;->access$0(Lcom/pantech/app/vegacamera/Panorama$9;)Lcom/pantech/app/vegacamera/Panorama;

    move-result-object v0

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$42(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->val$progress:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama$9$1;->this$1:Lcom/pantech/app/vegacamera/Panorama$9;

    #getter for: Lcom/pantech/app/vegacamera/Panorama$9;->this$0:Lcom/pantech/app/vegacamera/Panorama;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama$9;->access$0(Lcom/pantech/app/vegacamera/Panorama$9;)Lcom/pantech/app/vegacamera/Panorama;

    move-result-object v2

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Panorama;->access$42(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->SetMoveLoading(I)V

    goto :goto_0
.end method
