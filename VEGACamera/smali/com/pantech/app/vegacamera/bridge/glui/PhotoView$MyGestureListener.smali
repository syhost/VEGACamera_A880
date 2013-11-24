.class Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# static fields
.field private static final MIN_SCROLL_DELTA_X:I = 0xc8


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field private mSeenScaling:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .locals 5
    .parameter "delta"

    .prologue
    const/high16 v4, 0x3f00

    .line 1229
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$36(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1230
    add-float v2, p1, v4

    float-to-int v2, v2

    .line 1241
    :goto_0
    return v2

    .line 1234
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v1

    .line 1235
    .local v1, size:I
    const v2, 0x3e19999a

    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 1236
    .local v0, maxScrollDistance:F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1237
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    .line 1241
    :goto_1
    add-float v2, p1, v4

    float-to-int v2, v2

    goto :goto_0

    .line 1237
    :cond_1
    neg-float p1, v0

    goto :goto_1

    .line 1239
    :cond_2
    int-to-float v2, v1

    div-float v2, p1, v2

    const v3, 0x3fc90fdb

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float p1, v0, v2

    goto :goto_1
.end method

.method private deleteAfterAnimation(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 1297
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 1298
    .local v0, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1301
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoIndexHint:I
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$40(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1302
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1303
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1304
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1305
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1306
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private flingImages(FF)Z
    .locals 12
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v11, 0x7fffffff

    const/high16 v10, 0x3f00

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1262
    add-float v7, p1, v10

    float-to-int v5, v7

    .line 1263
    .local v5, vx:I
    add-float v7, p2, v10

    float-to-int v6, v7

    .line 1264
    .local v6, vy:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1265
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->flingPage(II)Z

    move-result v9

    .line 1292
    :cond_0
    :goto_0
    return v9

    .line 1267
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2

    .line 1268
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->flingFilmX(I)Z

    move-result v9

    goto :goto_0

    .line 1272
    :cond_2
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v7

    if-eq v7, v11, :cond_0

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$36(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1275
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$38(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/pantech/app/vegacamera/R$dimen;->photopage_max_dismiss_velocity:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 1276
    .local v4, maxVelocity:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$38(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/pantech/app/vegacamera/R$dimen;->photopage_swipe_escape_velocity:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 1277
    .local v2, escapeVelocity:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v7

    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 1278
    .local v0, centerY:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v2, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v7, v10, :cond_6

    .line 1279
    if-lez v6, :cond_4

    move v7, v8

    :goto_1
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-le v0, v10, :cond_5

    move v10, v8

    :goto_2
    if-ne v7, v10, :cond_6

    move v3, v8

    .line 1280
    .local v3, fastEnough:Z
    :goto_3
    if-eqz v3, :cond_0

    .line 1281
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1282
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v7

    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->flingFilmY(II)I

    move-result v1

    .line 1283
    .local v1, duration:I
    if-ltz v1, :cond_0

    .line 1284
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v7

    if-gez v6, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setPopFromTop(Z)V

    .line 1285
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1288
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v7, v11}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$39(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    move v9, v8

    .line 1289
    goto/16 :goto_0

    .end local v1           #duration:I
    .end local v3           #fastEnough:Z
    :cond_4
    move v7, v9

    .line 1279
    goto :goto_1

    :cond_5
    move v10, v9

    goto :goto_2

    :cond_6
    move v3, v9

    .line 1278
    goto :goto_3
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1386
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$41(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1388
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setExtraScalingRange(Z)V

    .line 1389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V

    .line 1391
    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$41(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 1397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setExtraScalingRange(Z)V

    .line 1398
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V

    .line 1400
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3fc0

    const/4 v3, 0x1

    .line 1161
    const-string v2, "PhotoView"

    const-string v5, "[PhotoView] gesture onDoubleTap"

    invoke-static {v2, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 1177
    :goto_0
    return v2

    .line 1164
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$22(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 1165
    goto :goto_0

    .line 1167
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    .line 1168
    .local v0, controller:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getImageScale()F

    move-result v1

    .line 1171
    .local v1, scale:F
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1172
    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1173
    :cond_2
    mul-float v2, v1, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->zoomIn(FFF)V

    :goto_1
    move v2, v3

    .line 1177
    goto :goto_0

    .line 1175
    :cond_3
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->resetToFullView()V

    goto :goto_1
.end method

.method public onDown(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1404
    const-string v2, "PhotoView"

    const-string v3, "[PhotoView] gesture onDown"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/4 v3, 0x4

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$14(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1406
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 1408
    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 1409
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mSeenScaling:Z

    .line 1410
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1412
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    .line 1437
    :goto_0
    return-void

    .line 1415
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1417
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1418
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1419
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->stopScrolling()V

    .line 1423
    :goto_1
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 1424
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1425
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1426
    add-float v2, p1, v5

    float-to-int v0, v2

    .line 1427
    .local v0, xi:I
    add-float v2, p2, v5

    float-to-int v1, v2

    .line 1428
    .local v1, yi:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->hitTest(II)I

    move-result v3

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$39(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1429
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1430
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$39(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    goto :goto_0

    .line 1421
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_2
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_1

    .line 1432
    .restart local v0       #xi:I
    .restart local v1       #yi:I
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$22(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v2

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isDeletable()Z

    move-result v2

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$42(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V

    goto/16 :goto_0

    .line 1435
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$39(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    goto/16 :goto_0
.end method

.method public onFling(FF)Z
    .locals 3
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1246
    const-string v0, "PhotoView"

    const-string v1, "[PhotoView] gesture onFling"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return v2

    .line 1249
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mSeenScaling:Z

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$37(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1252
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1256
    :goto_1
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mHadFling:Z

    goto :goto_0

    .line 1254
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->flingImages(FF)Z

    goto :goto_1
.end method

.method public onLongPress(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f00

    .line 1182
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1184
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1185
    .local v1, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1186
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1187
    const/4 v3, 0x2

    new-array v2, v3, [F

    aput p1, v2, v4

    aput p2, v2, v5

    .line 1188
    .local v2, pts:[F
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1189
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v3

    aget v4, v2, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    aget v5, v2, v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onLongPress(II)V

    .line 1191
    .end local v0           #inv:Landroid/graphics/Matrix;
    .end local v1           #m:Landroid/graphics/Matrix;
    .end local v2           #pts:[F
    :cond_0
    return-void
.end method

.method public onScale(FFF)Z
    .locals 6
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1329
    const-string v4, "PhotoView"

    const-string v5, "[PhotoView] gesture onScale"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v4, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return v3

    .line 1332
    :cond_1
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v4, :cond_0

    .line 1335
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v4, :cond_0

    .line 1337
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    .line 1338
    goto :goto_0

    .line 1340
    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v4

    invoke-virtual {v4, p3, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->scaleBy(FFF)I

    move-result v1

    .line 1345
    .local v1, outOfRange:I
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v4, p3

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mAccScale:F

    .line 1346
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f7851ec

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_6

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f83d70a

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_6

    move v0, v2

    .line 1349
    .local v0, largeEnough:Z
    :goto_1
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 1350
    if-gez v1, :cond_4

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-lez v1, :cond_8

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1351
    :cond_5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 1355
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1356
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v4, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 1360
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1361
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto :goto_0

    .end local v0           #largeEnough:Z
    :cond_6
    move v0, v3

    .line 1346
    goto :goto_1

    .restart local v0       #largeEnough:Z
    :cond_7
    move v2, v3

    .line 1356
    goto :goto_2

    .line 1366
    :cond_8
    if-eqz v1, :cond_9

    .line 1367
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto :goto_0

    .line 1369
    :cond_9
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto/16 :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 4
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1311
    const-string v0, "PhotoView"

    const-string v3, "[PhotoView] gesture onScaleBegin"

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    .line 1324
    :goto_0
    return v2

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$22(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 1317
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->beginScale(FF)V

    .line 1320
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 1321
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1322
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mSeenScaling:Z

    .line 1323
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1320
    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 2

    .prologue
    .line 1376
    const-string v0, "PhotoView"

    const-string v1, "[PhotoView] gesture onScaleEnd"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->endScale()V

    goto :goto_0
.end method

.method public onScroll(FFFF)Z
    .locals 8
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v5, 0x1

    .line 1195
    const-string v4, "PhotoView"

    const-string v6, "[PhotoView] gesture onScroll"

    invoke-static {v4, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v4, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return v5

    .line 1198
    :cond_1
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v4, :cond_2

    .line 1199
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1200
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    .line 1202
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFullScreenCamera:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$34(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1203
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x4348

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_0

    .line 1207
    :cond_3
    neg-float v4, p1

    add-float/2addr v4, v7

    float-to-int v1, v4

    .line 1208
    .local v1, dxi:I
    neg-float v4, p2

    add-float/2addr v4, v7

    float-to-int v2, v4

    .line 1209
    .local v2, dyi:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1210
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v4, :cond_5

    .line 1211
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->scrollFilmX(I)V

    goto :goto_0

    .line 1200
    .end local v1           #dxi:I
    .end local v2           #dyi:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1213
    .restart local v1       #dxi:I
    .restart local v2       #dyi:I
    :cond_5
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v4

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_0

    .line 1215
    invoke-direct {p0, p4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->calculateDeltaY(F)I

    move-result v3

    .line 1216
    .local v3, newDeltaY:I
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mDeltaY:I

    sub-int v0, v3, v4

    .line 1217
    .local v0, d:I
    if-eqz v0, :cond_0

    .line 1218
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v4

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->scrollFilmY(II)V

    .line 1219
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mDeltaY:I

    goto :goto_0

    .line 1223
    .end local v0           #d:I
    .end local v3           #newDeltaY:I
    :cond_6
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->scrollPage(II)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 1119
    const-string v5, "PhotoView"

    const-string v6, "[PhotoView] gesture onSingleTapUp"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 1123
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v8

    .line 1128
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v6

    and-int/lit8 v6, v6, -0x2

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1130
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v5, :cond_3

    .line 1131
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    add-float v6, p1, v9

    float-to-int v6, v6

    add-float v7, p2, v9

    float-to-int v7, v7

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v5, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$33(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;II)V

    .line 1136
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v1

    .line 1137
    .local v1, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    const/4 v4, 0x0

    .line 1138
    .local v4, supported:I
    if-eqz v1, :cond_2

    .line 1139
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v4

    .line 1140
    :cond_2
    const v5, 0x8000

    and-int/2addr v5, v4

    if-nez v5, :cond_3

    .line 1141
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v5, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 1142
    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1147
    .end local v1           #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .end local v4           #supported:I
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1149
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v5

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1150
    .local v2, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1151
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1152
    const/4 v5, 0x2

    new-array v3, v5, [F

    aput p1, v3, v10

    aput p2, v3, v8

    .line 1153
    .local v3, pts:[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1154
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v5

    aget v6, v3, v10

    add-float/2addr v6, v9

    float-to-int v6, v6

    aget v7, v3, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onUp()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f00

    const/4 v4, 0x0

    .line 1441
    const-string v3, "PhotoView"

    const-string v5, "[PhotoView] gesture onUp"

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$43(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1443
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v3

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$43(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1445
    :cond_0
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_2

    .line 1473
    :cond_1
    :goto_0
    return-void

    .line 1448
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 1449
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$44(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;->onRelease()V

    .line 1453
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_3

    .line 1454
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1455
    .local v2, r:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v1

    .line 1456
    .local v1, h:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v1

    mul-float/2addr v5, v8

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3ecccccd

    int-to-float v6, v1

    mul-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 1457
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->flingFilmY(II)I

    move-result v0

    .line 1458
    .local v0, duration:I
    if-ltz v0, :cond_3

    .line 1459
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v1

    mul-float/2addr v6, v8

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setPopFromTop(Z)V

    .line 1460
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1465
    .end local v0           #duration:I
    .end local v1           #h:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_3
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v3, :cond_5

    .line 1466
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto/16 :goto_0

    .restart local v0       #duration:I
    .restart local v1       #h:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_4
    move v3, v4

    .line 1459
    goto :goto_1

    .line 1470
    .end local v0           #duration:I
    .end local v1           #h:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_5
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapToNeighborImage()Z
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$45(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1471
    :cond_6
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapback()V
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$13(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    goto/16 :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1476
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1477
    return-void

    .line 1476
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
