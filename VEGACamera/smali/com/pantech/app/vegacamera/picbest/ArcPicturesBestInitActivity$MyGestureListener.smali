.class Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;
.super Ljava/lang/Object;
.source "ArcPicturesBestInitActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# static fields
.field private static final SWIPE_MIN_DISTANCE:I = 0x1e


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;-><init>(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 437
    const-string v0, "PictureBestApplication"

    const-string v1, "[ArcPictureBestInitActivity] touch onDown()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v2, 0x41f0

    .line 443
    const-string v0, "PictureBestApplication"

    const-string v1, "touch onFling()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;->ontouch(II)V

    .line 448
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 456
    const-string v0, "PictureBestApplication"

    const-string v1, "[ArcPictureBestInitActivity] touch onLongPress()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/high16 v2, 0x41f0

    .line 461
    const-string v0, "PictureBestApplication"

    const-string v1, "touch onScroll()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;->ontouch(II)V

    .line 466
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 474
    const-string v0, "PictureBestApplication"

    const-string v1, "[ArcPictureBestInitActivity] touch onShowPress()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 479
    const-string v2, "PictureBestApplication"

    const-string v3, "[ArcPictureBestInitActivity] touch onSingleTapUp()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 481
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 483
    .local v1, y:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    invoke-interface {v2, v0, v1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;->ontouch(II)V

    .line 484
    const/4 v2, 0x0

    return v2
.end method
