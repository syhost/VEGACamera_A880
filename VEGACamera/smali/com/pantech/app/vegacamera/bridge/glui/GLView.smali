.class public Lcom/pantech/app/vegacamera/bridge/glui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;
    }
.end annotation


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I


# instance fields
.field private mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

.field private mBackgroundColor:[F

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

.field private mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 69
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    .line 71
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMeasuredWidth:I

    .line 72
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMeasuredHeight:I

    .line 74
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastWidthSpec:I

    .line 75
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastHeightSpec:I

    .line 77
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mScrollY:I

    .line 78
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mScrollX:I

    .line 79
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mScrollHeight:I

    .line 80
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mScrollWidth:I

    .line 45
    return-void
.end method

.method private removeOneComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V
    .locals 9
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-ne v2, p1, :cond_0

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 182
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 183
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 186
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onDetachFromRoot()V

    .line 187
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 188
    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 365
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 366
    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, sizeChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 368
    return v0

    .line 365
    .end local v0           #sizeChanged:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 144
    iget-object v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iput-object p0, p1, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onAttachToRoot(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    .line 158
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onAttachToRoot(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onDetachFromRoot()V

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 319
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 320
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 321
    .local v10, action:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v0, :cond_0

    .line 322
    if-nez v10, :cond_2

    .line 323
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 324
    .local v1, cancel:Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pantech/app/vegacamera/bridge/glui/GLView;Z)Z

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 335
    .end local v1           #cancel:Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, i:I
    :goto_0
    if-gez v11, :cond_5

    .line 347
    .end local v11           #i:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 328
    :cond_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pantech/app/vegacamera/bridge/glui/GLView;Z)Z

    .line 329
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 330
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 332
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 338
    .restart local v11       #i:I
    :cond_5
    invoke-virtual {p0, v11}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-result-object v8

    .line 339
    .local v8, component:Lcom/pantech/app/vegacamera/bridge/glui/GLView;
    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 337
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 341
    :cond_7
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pantech/app/vegacamera/bridge/glui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    iput-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMotionTarget:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 343
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pantech/app/vegacamera/bridge/glui/GLView;Z)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 303
    iget-object v1, p4, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 304
    .local v1, rect:Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 305
    .local v0, left:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 306
    .local v2, top:I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 308
    invoke-virtual {p4, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 310
    const/4 v3, 0x1

    .line 314
    :goto_0
    return v3

    .line 312
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 314
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method dumpTree(Ljava/lang/String;)V
    .locals 5
    .parameter "prefix"

    .prologue
    .line 461
    const-string v2, "GLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 465
    return-void

    .line 463
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dumpTree(Ljava/lang/String;)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBackgroundColor()[F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBackgroundColor:[F

    return-object v0
.end method

.method public getBoundsOf(Lcom/pantech/app/vegacamera/bridge/glui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, xoffset:I
    const/4 v3, 0x0

    .line 410
    .local v3, yoffset:I
    move-object v1, p1

    .line 411
    .local v1, view:Lcom/pantech/app/vegacamera/bridge/glui/GLView;
    :goto_0
    if-ne v1, p0, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 420
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 412
    :cond_0
    if-nez v1, :cond_1

    .line 413
    const/4 v4, 0x0

    goto :goto_1

    .line 414
    :cond_1
    iget-object v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 415
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 416
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 417
    iget-object v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    goto :goto_0
.end method

.method public getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    .line 210
    .local v0, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestRender()V

    .line 212
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 355
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->setBounds(IIII)Z

    move-result v1

    .line 356
    .local v1, sizeChanged:Z
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 361
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onLayout(ZIIII)V

    .line 362
    return-void
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->lockRenderThread()V

    .line 450
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 372
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 384
    :cond_0
    return-void

    .line 376
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastWidthSpec:I

    .line 377
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastHeightSpec:I

    .line 379
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onMeasure(II)V

    .line 381
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    .line 434
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 437
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onAttachToRoot(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 440
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 443
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    .line 444
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onDetachFromRoot()V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 404
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 387
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 424
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 430
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-result-object v0

    .line 426
    .local v0, child:Lcom/pantech/app/vegacamera/bridge/glui/GLView;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 427
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onVisibilityChanged(I)V

    .line 424
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeAllComponents()V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 176
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 177
    return-void

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->removeOneComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)Z
    .locals 2
    .parameter "component"

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->removeOneComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, transitionActive:Z
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->invalidate()V

    .line 233
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->isActive()Z

    move-result v2

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->renderBackground(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 236
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save()V

    .line 237
    if-eqz v2, :cond_1

    .line 238
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v3, p0, p1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->applyContentTransform(Lcom/pantech/app/vegacamera/bridge/glui/GLView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 240
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_3

    .line 243
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 244
    if-eqz v2, :cond_2

    .line 245
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v3, p0, p1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->applyOverlay(Lcom/pantech/app/vegacamera/bridge/glui/GLView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 247
    :cond_2
    return-void

    .line 241
    :cond_3
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getComponent(I)Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->renderChild(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected renderBackground(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBackgroundColor:[F

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBackgroundColor:[F

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->clearBuffer([F)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v0, p0, p1}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->applyBackground(Lcom/pantech/app/vegacamera/bridge/glui/GLView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 271
    :cond_1
    return-void
.end method

.method protected renderChild(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V
    .locals 5
    .parameter "canvas"
    .parameter "component"

    .prologue
    .line 274
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 296
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v3, p2, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 278
    .local v1, xoffset:I
    iget-object v3, p2, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 280
    .local v2, yoffset:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 282
    iget-object v0, p2, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    .line 283
    .local v0, anim:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 285
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->invalidate()V

    .line 290
    :goto_1
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;->apply(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 292
    :cond_1
    invoke-virtual {p2, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 293
    if-eqz v0, :cond_2

    .line 294
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 295
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 288
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 216
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    .line 217
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastHeightSpec:I

    .line 218
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mLastWidthSpec:I

    .line 219
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mParent:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->requestLayout()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    .line 224
    .local v0, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setBackgroundColor([F)V
    .locals 0
    .parameter "color"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mBackgroundColor:[F

    .line 261
    return-void
.end method

.method public setIntroAnimation(Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;)V
    .locals 1
    .parameter "intro"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    .line 251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mTransition:Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/anim/StateTransitionAnimation;->start()V

    .line 253
    :cond_0
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 390
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    .line 391
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMeasuredWidth:I

    .line 392
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mMeasuredHeight:I

    .line 393
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    .line 107
    :goto_1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onVisibilityChanged(I)V

    .line 108
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->invalidate()V

    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public startAnimation(Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    .line 87
    .local v0, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    .line 90
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;->start()V

    .line 92
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mAnimation:Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->registerLaunchedAnimation(Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->invalidate()V

    .line 95
    return-void
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->mRoot:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 456
    :cond_0
    return-void
.end method
