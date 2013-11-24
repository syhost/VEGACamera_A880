.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;
.super Landroid/view/OrientationEventListener;
.source "BestShotEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    .line 179
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 182
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ORIENTATION_0:I

    .line 183
    .local v1, ori:I
    const/16 v0, 0xf

    .line 184
    .local v0, gap:I
    if-ltz p1, :cond_0

    const/16 v2, 0x1e

    if-lt p1, v2, :cond_1

    :cond_0
    const/16 v2, 0x14a

    if-lt p1, v2, :cond_2

    const/16 v2, 0x168

    if-ge p1, v2, :cond_2

    .line 185
    :cond_1
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ORIENTATION_270:I

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$6(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 201
    :goto_1
    return-void

    .line 186
    :cond_2
    const/16 v2, 0x3c

    if-lt p1, v2, :cond_3

    const/16 v2, 0x78

    if-ge p1, v2, :cond_3

    .line 187
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ORIENTATION_180:I

    .line 188
    goto :goto_0

    :cond_3
    const/16 v2, 0x96

    if-lt p1, v2, :cond_4

    const/16 v2, 0xd2

    if-ge p1, v2, :cond_4

    .line 189
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ORIENTATION_90:I

    .line 190
    goto :goto_0

    :cond_4
    const/16 v2, 0xf0

    if-lt p1, v2, :cond_5

    const/16 v2, 0x12c

    if-gt p1, v2, :cond_5

    .line 191
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ORIENTATION_0:I

    .line 192
    goto :goto_0

    .line 193
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$6(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I

    move-result v1

    goto :goto_0

    .line 198
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #setter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$7(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;I)V

    .line 199
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setOrientation(I)V

    goto :goto_1
.end method
