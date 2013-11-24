.class public Lcom/pantech/app/vegacamera/ui/RotateTextView;
.super Landroid/widget/TextView;
.source "RotateTextView.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0xb4


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    .line 37
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mStartDegree:I

    .line 38
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mTargetDegree:I

    .line 39
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mClockwise:Z

    .line 40
    iput-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationStartTime:J

    .line 41
    iput-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationEndTime:J

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getWidth()I

    move-result v24

    .line 74
    .local v24, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getHeight()I

    move-result v7

    .line 76
    .local v7, h:I
    if-eqz v24, :cond_0

    if-nez v7, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mTargetDegree:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 80
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v21

    .line 81
    .local v21, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationEndTime:J

    move-wide/from16 v26, v0

    cmp-long v26, v21, v26

    if-gez v26, :cond_5

    .line 82
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationStartTime:J

    move-wide/from16 v26, v0

    sub-long v26, v21, v26

    move-wide/from16 v0, v26

    long-to-int v6, v0

    .line 83
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mStartDegree:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mClockwise:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .end local v6           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v6, 0xb4

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    add-int v5, v26, v27

    .line 84
    .local v5, degree:I
    if-ltz v5, :cond_4

    rem-int/lit16 v5, v5, 0x168

    .line 85
    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->invalidate()V

    .line 93
    .end local v5           #degree:I
    .end local v21           #time:J
    :cond_2
    :goto_3
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 94
    .local v11, mPaint:Landroid/graphics/Paint;
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 96
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 97
    const v26, 0x3e4ccccd

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    sget-object v26, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    const/high16 v26, 0x4040

    const/high16 v27, 0x3f80

    const/high16 v28, 0x3f80

    const/high16 v29, -0x100

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 100
    const/16 v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/16 v26, 0xff

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getPaddingLeft()I

    move-result v10

    .line 104
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getPaddingTop()I

    move-result v23

    .line 105
    .local v23, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getPaddingRight()I

    move-result v15

    .line 106
    .local v15, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getPaddingBottom()I

    move-result v4

    .line 107
    .local v4, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getWidth()I

    move-result v26

    sub-int v26, v26, v10

    sub-int v25, v26, v15

    .line 108
    .local v25, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getHeight()I

    move-result v26

    sub-int v26, v26, v23

    sub-int v8, v26, v4

    .line 110
    .local v8, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v16

    .line 111
    .local v16, saveCount:I
    div-int/lit8 v26, v25, 0x2

    add-int v26, v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-int/lit8 v27, v8, 0x2

    add-int v27, v27, v23

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 113
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    neg-int v0, v7

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getTextSize()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 116
    .local v19, textsize:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    new-instance v18, Ljava/util/StringTokenizer;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v18, st:Ljava/util/StringTokenizer;
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 120
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getTextSize()F

    move-result v27

    mul-float v26, v26, v27

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getTextSize()F

    move-result v27

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v13, v0

    .line 121
    .local v13, offsetToCenter:I
    const/4 v9, 0x0

    .line 122
    .local v9, k:I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v26

    if-nez v26, :cond_6

    .line 140
    .end local v9           #k:I
    .end local v13           #offsetToCenter:I
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 83
    .end local v4           #bottom:I
    .end local v8           #height:I
    .end local v10           #left:I
    .end local v11           #mPaint:Landroid/graphics/Paint;
    .end local v15           #right:I
    .end local v16           #saveCount:I
    .end local v18           #st:Ljava/util/StringTokenizer;
    .end local v19           #textsize:I
    .end local v23           #top:I
    .end local v25           #width:I
    .restart local v6       #deltaTime:I
    .restart local v21       #time:J
    :cond_3
    neg-int v6, v6

    goto/16 :goto_1

    .line 84
    .end local v6           #deltaTime:I
    .restart local v5       #degree:I
    :cond_4
    rem-int/lit16 v0, v5, 0x168

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_2

    .line 88
    .end local v5           #degree:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mTargetDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    goto/16 :goto_3

    .line 123
    .end local v21           #time:J
    .restart local v4       #bottom:I
    .restart local v8       #height:I
    .restart local v9       #k:I
    .restart local v10       #left:I
    .restart local v11       #mPaint:Landroid/graphics/Paint;
    .restart local v13       #offsetToCenter:I
    .restart local v15       #right:I
    .restart local v16       #saveCount:I
    .restart local v18       #st:Ljava/util/StringTokenizer;
    .restart local v19       #textsize:I
    .restart local v23       #top:I
    .restart local v25       #width:I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 124
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, sq:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v12, v0

    .line 126
    .local v12, measuredTextWidth:I
    const/4 v14, 0x0

    .line 127
    .local v14, offsetY:I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v9, v0, :cond_7

    .line 128
    const/high16 v26, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v14, v0

    .line 130
    :cond_7
    div-int/lit8 v26, v25, 0x2

    div-int/lit8 v27, v12, 0x2

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-int/lit8 v27, v8, 0x2

    sub-int v27, v27, v13

    .line 131
    mul-int v28, v19, v9

    mul-int v29, v14, v9

    add-int v28, v28, v29

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 134
    .end local v9           #k:I
    .end local v12           #measuredTextWidth:I
    .end local v13           #offsetToCenter:I
    .end local v14           #offsetY:I
    .end local v17           #sq:Ljava/lang/String;
    :cond_8
    sget-object v26, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v20

    .line 135
    .local v20, tf:Landroid/graphics/Typeface;
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v12, v0

    .line 137
    .restart local v12       #measuredTextWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    div-int/lit8 v27, v25, 0x2

    div-int/lit8 v28, v12, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v8, 0x2

    div-int/lit8 v29, v19, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 49
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 50
    :goto_0
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 68
    :goto_1
    return-void

    .line 49
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 53
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mTargetDegree:I

    .line 54
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mStartDegree:I

    .line 55
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationStartTime:J

    .line 57
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mTargetDegree:I

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 58
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 62
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 64
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mClockwise:Z

    .line 65
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xb4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateTextView;->mAnimationEndTime:J

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->invalidate()V

    goto :goto_1

    .line 58
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 64
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method
