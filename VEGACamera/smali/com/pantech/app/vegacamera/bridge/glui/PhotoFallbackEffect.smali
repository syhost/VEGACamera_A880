.class public Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;
.super Lcom/pantech/app/vegacamera/bridge/anim/Animation;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionProvider:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;

.field private mProgress:F

.field private mSource:Landroid/graphics/RectF;

.field private mTarget:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/anim/Animation;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->setDuration(I)V

    .line 62
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    return-void
.end method

.method private drawEntry(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;)V
    .locals 17
    .parameter "canvas"
    .parameter "entry"

    .prologue
    .line 91
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-virtual {v12}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->isLoaded()Z

    move-result v12

    if-nez v12, :cond_0

    .line 154
    :goto_0
    return-void

    .line 94
    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-virtual {v12}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getWidth()I

    move-result v11

    .line 95
    .local v11, w:I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-virtual {v12}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getHeight()I

    move-result v7

    .line 97
    .local v7, h:I
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 98
    .local v9, s:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 102
    .local v5, d:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mProgress:F

    .line 104
    .local v8, p:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 105
    .local v6, fullScale:F
    mul-float v12, v6, v8

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v10, v12, v13

    .line 107
    .local v10, scale:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 108
    .local v3, cx:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v4, v12, v13

    .line 110
    .local v4, cy:F
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float v1, v12, v10

    .line 111
    .local v1, ch:F
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v2, v12, v10

    .line 113
    .local v2, cw:F
    if-le v11, v7, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v1, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v1, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    sub-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    add-int v15, v11, v7

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 119
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 120
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v1, v15

    sub-float v15, v3, v15

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, v11, v7

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v1, v13

    add-float/2addr v13, v3

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    add-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 132
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 135
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v2, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    sub-int v14, v7, v11

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v11

    add-int v16, v7, v11

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 139
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 140
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v2, v16

    sub-float v16, v4, v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v11

    sub-int v16, v7, v11

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x4000

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v4

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    add-int v14, v11, v7

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 152
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    goto/16 :goto_0
.end method


# virtual methods
.method public addEntry(Lcom/pantech/app/vegacamera/bridge/data/Path;Landroid/graphics/Rect;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V
    .locals 2
    .parameter "path"
    .parameter "rect"
    .parameter "texture"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;

    invoke-direct {v1, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Landroid/graphics/Rect;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 6
    .parameter "canvas"

    .prologue
    .line 79
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->calculate(J)Z

    move-result v2

    .line 80
    .local v2, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 87
    return v2

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;

    .line 82
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;
    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->index:I

    if-gez v4, :cond_1

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mPositionProvider:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;

    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->index:I

    invoke-interface {v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->drawEntry(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;)V

    goto :goto_1
.end method

.method public getEntry(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;
    .locals 4
    .parameter "path"

    .prologue
    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 75
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;

    .line 72
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-eq v3, p1, :cond_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 158
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mProgress:F

    .line 159
    return-void
.end method

.method public setPositionProvider(Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mPositionProvider:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;

    .line 163
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mPositionProvider:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;

    if-eqz v3, :cond_0

    .line 164
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 169
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_0
    return-void

    .line 165
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;

    .line 166
    .local v0, entry:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->mPositionProvider:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v3

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect$Entry;->index:I

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
