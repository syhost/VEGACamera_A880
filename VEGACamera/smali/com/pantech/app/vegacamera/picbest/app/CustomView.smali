.class public Lcom/pantech/app/vegacamera/picbest/app/CustomView;
.super Landroid/view/View;
.source "CustomView.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private ORIENTATION_0:I

.field private ORIENTATION_180:I

.field private ORIENTATION_270:I

.field private ORIENTATION_90:I

.field private mLock:Ljava/lang/Object;

.field public mOffsetX:I

.field public mOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRotateDegress:F

.field public mRotateOffsetX:I

.field public mRotateOffsetY:I

.field public mRotateZoomSize:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field public mZoomSize:F

.field private mfaceRect:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "CustomView"

    sput-object v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_0:I

    .line 22
    const/16 v0, 0x5a

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_90:I

    .line 23
    const/16 v0, 0xb4

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_180:I

    .line 24
    const/16 v0, 0x10e

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_270:I

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mLock:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    .line 31
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    .line 34
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    .line 35
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    .line 36
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    .line 38
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    .line 39
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    .line 40
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    .line 175
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_0:I

    .line 22
    const/16 v0, 0x5a

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_90:I

    .line 23
    const/16 v0, 0xb4

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_180:I

    .line 24
    const/16 v0, 0x10e

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_270:I

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mLock:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    .line 31
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    .line 34
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    .line 35
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    .line 36
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    .line 38
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    .line 39
    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    .line 40
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    .line 175
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    .line 48
    return-void
.end method

.method private calcRotateZoomSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 87
    int-to-float v2, p1

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 88
    .local v1, rotateScaleW:F
    int-to-float v2, p2

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 89
    .local v0, rotateScaleH:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    .line 90
    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    .line 91
    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    .line 92
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 93
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    int-to-float v3, p2

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    .line 100
    :goto_1
    return-void

    :cond_0
    move v2, v0

    .line 89
    goto :goto_0

    .line 94
    :cond_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 95
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    int-to-float v3, p1

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    goto :goto_1

    .line 97
    :cond_2
    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    .line 98
    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    goto :goto_1
.end method

.method private calcZoomSize(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 104
    int-to-float v2, p1

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 105
    .local v1, ratioW:F
    int-to-float v2, p2

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 106
    .local v0, ratioH:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    .line 107
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 108
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    int-to-float v3, p2

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    .line 109
    iput v5, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    .line 118
    :goto_1
    return-void

    :cond_0
    move v2, v0

    .line 106
    goto :goto_0

    .line 110
    :cond_1
    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    .line 111
    iput v5, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    .line 112
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    int-to-float v3, p1

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    goto :goto_1

    .line 114
    :cond_2
    iput v5, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    .line 115
    iput v5, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    if-eqz v7, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 124
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 125
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$dimen;->rect_stroke:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$color;->recognize_face_frame:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    .line 129
    .local v1, count:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    .line 130
    .local v6, scale:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    int-to-float v3, v7

    .line 131
    .local v3, offsetX:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    int-to-float v4, v7

    .line 132
    .local v4, offsetY:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_0:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 133
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 171
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #offsetX:F
    .end local v4           #offsetY:F
    .end local v6           #scale:F
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 173
    return-void

    .line 134
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #offsetX:F
    .restart local v4       #offsetY:F
    .restart local v6       #scale:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 135
    .local v5, rectItem:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 136
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v9, v3

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v10, v4

    iget v11, v5, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    .line 137
    div-float/2addr v11, v6

    add-float/2addr v11, v3

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 136
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2           #i:I
    .end local v5           #rectItem:Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_270:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 141
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 143
    .restart local v5       #rectItem:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 144
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    int-to-float v10, v10

    .line 145
    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    .line 146
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    int-to-float v13, v13

    iget v14, v5, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 144
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v2           #i:I
    .end local v5           #rectItem:Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_90:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 150
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 152
    .restart local v5       #rectItem:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    int-to-float v10, v10

    .line 154
    iget v11, v5, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    int-to-float v12, v12

    iget v13, v5, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 155
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    int-to-float v12, v12

    iget v13, v5, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 153
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    .end local v2           #i:I
    .end local v5           #rectItem:Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_180:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 159
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v1, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 161
    .restart local v5       #rectItem:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 162
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/RectF;

    sget v9, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v9, v9

    .line 163
    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v10, v3

    sub-float/2addr v9, v10

    sget v10, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v10, v10

    .line 164
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    add-float/2addr v11, v4

    sub-float/2addr v10, v11

    sget v11, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v11, v11

    .line 165
    iget v12, v5, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v12, v3

    sub-float/2addr v11, v12

    sget v12, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v12, v12

    .line 166
    iget v13, v5, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    div-float/2addr v13, v6

    add-float/2addr v13, v4

    sub-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 162
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public drawFacePath(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, faceRect:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/graphics/Rect;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    .line 179
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->invalidate()V

    .line 180
    return-void
.end method

.method public getOffsetX()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_90:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_270:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 64
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetX:I

    .line 66
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetX:I

    goto :goto_0
.end method

.method public getOffsetY()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_90:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_270:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateOffsetY:I

    .line 74
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mOffsetY:I

    goto :goto_0
.end method

.method public getZoomSize()F
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_90:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->ORIENTATION_270:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 80
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateZoomSize:F

    .line 82
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mZoomSize:F

    goto :goto_0
.end method

.method public init(IIII)V
    .locals 0
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 51
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenWidth:I

    .line 52
    iput p2, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mScreenHeight:I

    .line 53
    invoke-direct {p0, p3, p4}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->calcZoomSize(II)V

    .line 54
    invoke-direct {p0, p3, p4}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->calcRotateZoomSize(II)V

    .line 55
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mfaceRect:Ljava/util/Vector;

    .line 185
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->invalidate()V

    .line 183
    monitor-exit v1

    .line 187
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRotateDegress(F)V
    .locals 0
    .parameter "degress"

    .prologue
    .line 58
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->mRotateDegress:F

    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->invalidate()V

    .line 60
    return-void
.end method
