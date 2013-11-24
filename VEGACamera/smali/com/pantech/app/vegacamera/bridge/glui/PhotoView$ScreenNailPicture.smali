.class Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

.field private mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 918
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 916
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    .line 919
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    .line 920
    return-void
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSize()V
    .locals 5

    .prologue
    .line 1016
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$18(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 1024
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v2, :cond_2

    .line 1025
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 1026
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    .line 1033
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget v1, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 1034
    .local v1, w:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget v0, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    .line 1035
    .local v0, h:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$20(III)I

    move-result v3

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 1036
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$20(III)I

    move-result v3

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    .line 1037
    return-void

    .line 1018
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    .line 1019
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    invoke-interface {v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 21
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-nez v3, :cond_1

    .line 946
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v4

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawPlaceHolder(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v3, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$32(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v18

    .line 952
    .local v18, w:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v13

    .line 953
    .local v13, h:I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v13, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_3

    .line 954
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->noDraw()V

    goto :goto_0

    .line 958
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getFilmRatio()F

    move-result v12

    .line 959
    .local v12, filmRatio:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    if-lez v3, :cond_9

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$22(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v19, 0x1

    .line 960
    .local v19, wantsCardEffect:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    if-eqz v3, :cond_a

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-nez v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v13, 0x2

    if-eq v3, v4, :cond_a

    const/16 v20, 0x1

    .line 961
    .local v20, wantsOffsetEffect:Z
    :goto_2
    if-eqz v19, :cond_b

    div-int/lit8 v3, v18, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$26(FFF)F

    move-result v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v10, v3

    .line 962
    .local v10, cx:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 963
    .local v11, cy:I
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 964
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 965
    if-eqz v19, :cond_c

    .line 966
    div-int/lit8 v3, v18, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    div-float v15, v3, v4

    .line 967
    .local v15, progress:F
    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-static {v15, v3, v4}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v15

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v3, v15}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$25(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F

    move-result v9

    .line 969
    .local v9, alpha:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getScrollScale(F)F
    invoke-static {v3, v15}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$24(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F

    move-result v17

    .line 970
    .local v17, scale:F
    const/high16 v3, 0x3f80

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v9, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$26(FFF)F

    move-result v9

    .line 971
    const/high16 v3, 0x3f80

    move/from16 v0, v17

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$26(FFF)F

    move-result v17

    .line 972
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    .line 973
    const/high16 v3, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->scale(FFF)V

    .line 979
    .end local v9           #alpha:F
    .end local v15           #progress:F
    .end local v17           #scale:F
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_5

    .line 980
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->rotate(FFFF)V

    .line 982
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$20(III)I

    move-result v7

    .line 983
    .local v7, drawW:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$20(III)I

    move-result v8

    .line 984
    .local v8, drawH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    neg-int v4, v7

    div-int/lit8 v5, v4, 0x2

    neg-int v4, v8

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->invalidate()V

    .line 988
    :cond_6
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 989
    .local v16, s:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v3, :cond_7

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v16

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawVideoPlayIcon(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$30(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V

    .line 991
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mLoadingState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawLoadingFailMessage(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$31(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 994
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 959
    .end local v7           #drawW:I
    .end local v8           #drawH:I
    .end local v10           #cx:I
    .end local v11           #cy:I
    .end local v16           #s:I
    .end local v19           #wantsCardEffect:Z
    .end local v20           #wantsOffsetEffect:Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 960
    .restart local v19       #wantsCardEffect:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 961
    .restart local v20       #wantsOffsetEffect:Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    goto/16 :goto_3

    .line 974
    .restart local v10       #cx:I
    .restart local v11       #cy:I
    :cond_c
    if-eqz v20, :cond_4

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v13, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v13

    div-float v14, v3, v4

    .line 976
    .local v14, offset:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v3, v14}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$27(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F

    move-result v9

    .line 977
    .restart local v9       #alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_4
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1011
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->forceImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V

    .line 1012
    return-void
.end method

.method public getSize()Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    .line 926
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    .line 927
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    .line 928
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    .line 929
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    .line 930
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 931
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 932
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 933
    return-void
.end method

.method public setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 1005
    return-void
.end method
