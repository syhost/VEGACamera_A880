.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;
.super Ljava/lang/Object;
.source "BestShotEditActivity.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ontouch(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    iget-boolean v2, v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$0(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    sget v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #calls: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getPersonChoose(II)I
    invoke-static {v2, p1, p2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;II)I

    move-result v1

    .line 126
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$2(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$4(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$5(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->PicEditStart()V

    .line 134
    const/4 v2, 0x2

    sput v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    goto :goto_0

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$2(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$3(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I

    move-result-object v3

    aget v3, v3, v0

    aput v3, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
