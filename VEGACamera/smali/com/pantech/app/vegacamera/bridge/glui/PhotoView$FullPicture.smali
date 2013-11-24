.class Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mLoadingState:I

    .line 693
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    return-void
.end method

.method private drawTileView(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 20
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getImageScale()F

    move-result v7

    .line 797
    .local v7, imageScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v5

    .line 798
    .local v5, viewW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v6

    .line 799
    .local v6, viewH:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 800
    .local v3, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 801
    .local v4, cy:F
    const/high16 v16, 0x3f80

    .line 803
    .local v16, scale:F
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getFilmRatio()F

    move-result v10

    .line 805
    .local v10, filmRatio:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsCamera:Z

    if-nez v2, :cond_4

    const/high16 v2, 0x3f80

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$22(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v2

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-nez v2, :cond_4

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->inOpeningAnimation()Z

    move-result v2

    if-nez v2, :cond_4

    .line 805
    const/16 v17, 0x1

    .line 807
    .local v17, wantsCardEffect:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f80

    cmpl-float v2, v10, v2

    if-nez v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v19, v6, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/16 v18, 0x1

    .line 808
    .local v18, wantsOffsetEffect:Z
    :goto_1
    if-eqz v17, :cond_7

    .line 810
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    .line 811
    .local v11, left:I
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 812
    .local v14, right:I
    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->calculateMoveOutProgress(III)F
    invoke-static {v11, v14, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$23(III)F

    move-result v13

    .line 813
    .local v13, progress:F
    const/high16 v2, -0x4080

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    invoke-static {v13, v2, v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v13

    .line 817
    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getScrollScale(F)F
    invoke-static {v2, v13}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$24(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F

    move-result v16

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v2, v13}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$25(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F

    move-result v8

    .line 820
    .local v8, alpha:F
    const/high16 v2, 0x3f80

    move/from16 v0, v16

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F
    invoke-static {v10, v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$26(FFF)F

    move-result v16

    .line 821
    const/high16 v2, 0x3f80

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F
    invoke-static {v10, v8, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$26(FFF)F

    move-result v8

    .line 823
    mul-float v7, v7, v16

    .line 824
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    .line 827
    sub-int v2, v14, v11

    if-gt v2, v5, :cond_6

    .line 830
    int-to-float v2, v5

    const/high16 v19, 0x4000

    div-float v9, v2, v19

    .line 837
    .local v9, cxPage:F
    :goto_2
    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F
    invoke-static {v10, v9, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$26(FFF)F

    move-result v3

    .line 845
    .end local v8           #alpha:F
    .end local v9           #cxPage:F
    .end local v11           #left:I
    .end local v13           #progress:F
    .end local v14           #right:I
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v19, v0

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v19

    sub-int v2, v2, v19

    add-int/lit8 v2, v2, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v2, v0, :cond_1

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawBodder(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v2, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$29(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V

    :cond_1
    move-object/from16 v2, p0

    .line 850
    invoke-direct/range {v2 .. v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v19, v0

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->renderChild(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 854
    const/high16 v2, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v19, 0x3f00

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v2, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    const/high16 v19, 0x3f00

    add-float v2, v2, v19

    float-to-int v15, v2

    .line 856
    .local v15, s:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsVideo:Z

    if-eqz v2, :cond_2

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawVideoPlayIcon(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V
    invoke-static {v2, v0, v15}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$30(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V

    .line 859
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawLoadingFailMessage(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    invoke-static {v2, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$31(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 867
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 868
    return-void

    .line 805
    .end local v15           #s:I
    .end local v17           #wantsCardEffect:Z
    .end local v18           #wantsOffsetEffect:Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 807
    .restart local v17       #wantsCardEffect:Z
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 835
    .restart local v8       #alpha:F
    .restart local v11       #left:I
    .restart local v13       #progress:F
    .restart local v14       #right:I
    .restart local v18       #wantsOffsetEffect:Z
    :cond_6
    sub-int v2, v14, v11

    int-to-float v2, v2

    mul-float v2, v2, v16

    const/high16 v19, 0x4000

    div-float v9, v2, v19

    .restart local v9       #cxPage:F
    goto/16 :goto_2

    .line 839
    .end local v8           #alpha:F
    .end local v9           #cxPage:F
    .end local v11           #left:I
    .end local v13           #progress:F
    .end local v14           #right:I
    :cond_7
    if-eqz v18, :cond_0

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v19, v6, 0x2

    sub-int v2, v2, v19

    int-to-float v2, v2

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v12, v2, v19

    .line 841
    .local v12, offset:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v2, v12}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$27(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F

    move-result v8

    .line 842
    .restart local v8       #alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 12
    .parameter "cx"
    .parameter "cy"
    .parameter "viewW"
    .parameter "viewH"
    .parameter "scale"

    .prologue
    .line 874
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getImageWidth()I

    move-result v4

    .line 875
    .local v4, imageW:I
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getImageHeight()I

    move-result v3

    .line 876
    .local v3, imageH:I
    int-to-float v9, v4

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 877
    .local v1, centerX:I
    int-to-float v9, v3

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 879
    .local v2, centerY:I
    sub-int v5, v4, v1

    .line 880
    .local v5, inverseX:I
    sub-int v6, v3, v2

    .line 882
    .local v6, inverseY:I
    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    .line 900
    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 884
    :sswitch_0
    move v7, v1

    .line 885
    .local v7, x:I
    move v8, v2

    .line 902
    .local v8, y:I
    :goto_0
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->setPosition(IIFI)Z

    .line 903
    return-void

    .line 888
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_1
    move v7, v2

    .line 889
    .restart local v7       #x:I
    move v8, v5

    .line 890
    .restart local v8       #y:I
    goto :goto_0

    .line 892
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_2
    move v7, v5

    .line 893
    .restart local v7       #x:I
    move v8, v6

    .line 894
    .restart local v8       #y:I
    goto :goto_0

    .line 896
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_3
    move v7, v6

    .line 897
    .restart local v7       #x:I
    move v8, v1

    .line 898
    .restart local v8       #y:I
    goto :goto_0

    .line 882
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateSize()V
    .locals 4

    .prologue
    .line 731
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$18(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    .line 739
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    .line 740
    .local v1, w:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    .line 741
    .local v0, h:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$20(III)I

    move-result v3

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 742
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$20(III)I

    move-result v3

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    .line 743
    return-void

    .line 733
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 736
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 748
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->drawTileView(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V

    .line 757
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mWantPictureCenterCallbacks:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$21(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsCamera:Z

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onPictureCenter(Z)V

    goto :goto_0
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->updateSize()V

    .line 726
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->forceImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V

    .line 727
    return-void
.end method

.method public getSize()Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mSize:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->notifyModelInvalidated()V

    .line 707
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsCamera:Z

    .line 708
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsPanorama:Z

    .line 709
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsStaticCamera:Z

    .line 710
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsVideo:Z

    .line 711
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 712
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->mLoadingState:I

    .line 713
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 714
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->updateSize()V

    .line 715
    return-void
.end method

.method public setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 782
    return-void
.end method
