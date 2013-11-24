.class Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;
.super Ljava/lang/Object;
.source "SelfShotEditActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setAnimationListener()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 68
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->bitmapRecycle()V

    .line 72
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$6(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)I

    move-result v3

    aget-object v2, v2, v3

    .line 73
    sget v3, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget v4, v4, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->screenScaleSize:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 74
    sget v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget v5, v5, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->screenScaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 72
    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, firstImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-boolean v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->is_13M:Z

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getOrientation(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, orientation:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #calls: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v3, v0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$7(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    .end local v1           #orientation:I
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
