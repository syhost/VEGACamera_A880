.class public Lcom/pantech/app/vegacamera/intro/IntroView;
.super Landroid/widget/RelativeLayout;
.source "IntroView.java"


# static fields
.field private static final INTRO_NUM:I = 0x4

.field private static final aNumIntro:[I


# instance fields
.field public IntroListener:Lcom/pantech/app/vegacamera/operator/IIntroAnimation;

.field private iHeight:I

.field private iWidth:I

.field private mContext:Landroid/content/Context;

.field private vNumIntro:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 32
    .local v0, arrayOfInt:[I
    const/4 v1, 0x0

    const/16 v2, 0x5a

    aput v2, v0, v1

    .line 33
    const/4 v1, 0x1

    const/16 v2, 0x10e

    aput v2, v0, v1

    .line 34
    const/4 v1, 0x3

    const/16 v2, 0xb4

    aput v2, v0, v1

    .line 35
    sput-object v0, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->mContext:Landroid/content/Context;

    .line 23
    iput v2, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->iWidth:I

    .line 24
    iput v2, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    .line 26
    iput-object v1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->IntroListener:Lcom/pantech/app/vegacamera/operator/IIntroAnimation;

    .line 44
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/widget/ImageView;

    .line 45
    .local v0, arrayOfImageView:[Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    .line 46
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/intro/IntroView;->_InitIntroView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->mContext:Landroid/content/Context;

    .line 23
    iput v2, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->iWidth:I

    .line 24
    iput v2, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    .line 26
    iput-object v1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->IntroListener:Lcom/pantech/app/vegacamera/operator/IIntroAnimation;

    .line 51
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/widget/ImageView;

    .line 52
    .local v0, arrayOfImageView:[Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    .line 53
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/intro/IntroView;->_InitIntroView(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private _InitIntroView(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/vegacamera/intro/IntroView;->mContext:Landroid/content/Context;

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x43fa

    div-float v7, v15, v16

    .line 59
    .local v7, fW:F
    const/high16 v15, 0x4380

    mul-float/2addr v15, v7

    float-to-int v14, v15

    .line 60
    .local v14, resW:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iWidth:I

    .line 61
    const/high16 v15, 0x43d2

    mul-float/2addr v15, v7

    float-to-int v13, v15

    .line 62
    .local v13, resH:I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/pantech/app/vegacamera/R$drawable;->intro:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 64
    .local v5, dIntro:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 66
    .local v3, count:I
    :goto_0
    const/4 v15, 0x4

    if-lt v3, v15, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    .line 70
    .local v2, arrayOfImageView:[Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v8, localImageView5:Landroid/widget/ImageView;
    aput-object v8, v2, v3

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v9, v15, v3

    .line 73
    .local v9, localImageView6:Landroid/widget/ImageView;
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 74
    .local v11, localScaleType:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v15, v15, v3

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iWidth:I

    .line 77
    .local v6, dWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    .line 78
    .local v4, dHeight:I
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v12, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0x9

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v15, v15, v3

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v10, v15, v3

    .line 83
    .local v10, localImageView7:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pantech/app/vegacamera/intro/IntroView;->addView(Landroid/view/View;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0
.end method


# virtual methods
.method public ResetIntroAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->clearAnimation()V

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, count:I
    :goto_0
    const/4 v4, 0x4

    if-lt v0, v4, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 166
    sget-object v4, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    aget v4, v4, v0

    int-to-float v1, v4

    .line 167
    .local v1, f1:F
    sget-object v4, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    aget v4, v4, v0

    int-to-float v2, v4

    .line 168
    .local v2, f2:F
    new-instance v3, Landroid/view/animation/RotateAnimation;

    invoke-direct {v3, v1, v2, v5, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 169
    .local v3, rotate:Landroid/view/animation/RotateAnimation;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 170
    iget-object v4, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 161
    goto :goto_0
.end method

.method public SetIntroAnimationListener(Lcom/pantech/app/vegacamera/operator/IIntroAnimation;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->IntroListener:Lcom/pantech/app/vegacamera/operator/IIntroAnimation;

    .line 40
    return-void
.end method

.method public StartIntroAnimation()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 176
    iget-object v7, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->mContext:Landroid/content/Context;

    const v8, 0x10a0005

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 177
    .local v3, localInterpolator:Landroid/view/animation/Interpolator;
    const/4 v0, 0x0

    .line 179
    .local v0, count:I
    :goto_0
    const/4 v7, 0x4

    if-lt v0, v7, :cond_0

    .line 180
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    invoke-direct {v2, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    .local v2, localAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v10}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 182
    invoke-virtual {v2, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 183
    new-instance v4, Lcom/pantech/app/vegacamera/intro/AnimationControl;

    invoke-direct {v4, p0}, Lcom/pantech/app/vegacamera/intro/AnimationControl;-><init>(Lcom/pantech/app/vegacamera/intro/IntroView;)V

    .line 184
    .local v4, localb:Lcom/pantech/app/vegacamera/intro/AnimationControl;
    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    return-void

    .line 187
    .end local v2           #localAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v4           #localb:Lcom/pantech/app/vegacamera/intro/AnimationControl;
    :cond_0
    sget-object v7, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    aget v7, v7, v0

    int-to-float v1, v7

    .line 188
    .local v1, fromDegree:F
    sget-object v7, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, 0x46

    int-to-float v6, v7

    .line 189
    .local v6, toDegree:F
    new-instance v5, Landroid/view/animation/RotateAnimation;

    invoke-direct {v5, v1, v6, v9, v9}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 190
    .local v5, rotate:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v5, v10}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 191
    invoke-virtual {v5, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 192
    invoke-virtual {v5, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    iget-object v7, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 178
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, count:I
    :goto_0
    const/4 v4, 0x4

    if-lt v0, v4, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    sget-object v4, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    aget v4, v4, v0

    int-to-float v1, v4

    .line 97
    .local v1, fromDegree:F
    sget-object v4, Lcom/pantech/app/vegacamera/intro/IntroView;->aNumIntro:[I

    aget v4, v4, v0

    int-to-float v3, v4

    .line 98
    .local v3, toDegree:F
    new-instance v2, Landroid/view/animation/RotateAnimation;

    invoke-direct {v2, v1, v3, v5, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 99
    .local v2, rotate:Landroid/view/animation/RotateAnimation;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 100
    iget-object v4, p0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 107
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->getHeight()I

    move-result v26

    .line 110
    .local v26, k:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->getWidth()I

    move-result v35

    .line 111
    .local v35, m:I
    sub-int v37, v26, v35

    div-int/lit8 v36, v37, 0x2

    .line 113
    .local v36, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v27, v37, v38

    .line 114
    .local v27, localImageView1:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getLeft()I

    move-result v37

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    sub-int v2, v37, v36

    .line 115
    .local v2, i1:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    .line 116
    .local v13, i2:I
    add-int v19, v2, v13

    .line 117
    .local v19, i3:I
    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v28, v37, v38

    .line 119
    .local v28, localImageView2:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getTop()I

    move-result v37

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v20, v0

    .line 120
    .local v20, i4:I
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v29, v37, v38

    .line 123
    .local v29, localImageView3:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getLeft()I

    move-result v37

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    sub-int v21, v37, v36

    .line 124
    .local v21, i5:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->getHeight()I

    move-result v22

    .line 125
    .local v22, i6:I
    add-int v23, v21, v22

    .line 126
    .local v23, i7:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    move/from16 v24, v0

    .line 127
    .local v24, i8:I
    sub-int v25, v23, v24

    .line 128
    .local v25, i9:I
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v30, v37, v38

    .line 130
    .local v30, localImageView4:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getTop()I

    move-result v37

    move/from16 v0, v37

    neg-int v3, v0

    .line 131
    .local v3, i10:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->getHeight()I

    move-result v4

    .line 132
    .local v4, i11:I
    add-int v5, v3, v4

    .line 133
    .local v5, i12:I
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    aget-object v31, v37, v38

    .line 136
    .local v31, localImageView5:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getLeft()I

    move-result v37

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    sub-int v6, v37, v36

    .line 137
    .local v6, i13:I
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    aget-object v32, v37, v38

    .line 139
    .local v32, localImageView6:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getTop()I

    move-result v37

    move/from16 v0, v37

    neg-int v7, v0

    .line 140
    .local v7, i14:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->getHeight()I

    move-result v8

    .line 141
    .local v8, i15:I
    add-int v9, v7, v8

    .line 142
    .local v9, i16:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    .line 143
    .local v10, i17:I
    sub-int v11, v9, v10

    .line 144
    .local v11, i18:I
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    aget-object v33, v37, v38

    .line 147
    .local v33, localImageView7:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getLeft()I

    move-result v37

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    sub-int v12, v37, v36

    .line 148
    .local v12, i19:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/intro/IntroView;->getHeight()I

    move-result v14

    .line 149
    .local v14, i20:I
    add-int v15, v12, v14

    .line 150
    .local v15, i21:I
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    aget-object v34, v37, v38

    .line 152
    .local v34, localImageView8:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->vNumIntro:[Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getTop()I

    move-result v37

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v16, v0

    .line 153
    .local v16, i22:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->iHeight:I

    move/from16 v17, v0

    .line 154
    .local v17, i23:I
    add-int v18, v16, v17

    .line 155
    .local v18, i24:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 156
    return-void
.end method
