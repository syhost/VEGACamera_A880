.class public Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoProgressBar"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mPreProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mPreProgress:F

    .line 35
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    .line 36
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mMaxProgress:F

    .line 37
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 38
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 39
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 40
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 69
    return-void
.end method

.method private _SetDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 76
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 77
    iput p1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 83
    :cond_1
    return-void
.end method

.method private _SetRightIncreasing(Z)V
    .locals 1
    .parameter "rightIncreasing"

    .prologue
    const/4 v0, 0x0

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 123
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 124
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 125
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->_SetDirection(I)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 133
    return-void

    .line 127
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 128
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 129
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->_SetDirection(I)V

    goto :goto_0
.end method


# virtual methods
.method public GetDirection()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    return v0
.end method

.method public Reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    .line 178
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mPreProgress:F

    .line 179
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgressOffset:F

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->_SetDirection(I)V

    .line 181
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 182
    return-void
.end method

.method public SetBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 92
    return-void
.end method

.method public SetDoneColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 97
    return-void
.end method

.method public SetIndicatorColor(I)V
    .locals 1
    .parameter "mIndicatorColor"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 102
    return-void
.end method

.method public SetIndicatorWidth(F)V
    .locals 0
    .parameter "w"

    .prologue
    .line 116
    iput p1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    .line 117
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 118
    return-void
.end method

.method public SetMaxProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 112
    int-to-float v0, p1

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mMaxProgress:F

    .line 113
    return-void
.end method

.method public SetOnDirectionChangeListener(Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    .line 73
    return-void
.end method

.method public SetProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 139
    const-string v0, "PanoProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "PanoProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 142
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 143
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->_SetRightIncreasing(Z)V

    .line 149
    :cond_0
    :goto_0
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 150
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    .line 152
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    .line 153
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 155
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mRightMostProgress:F

    .line 156
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mPreProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;->onDirectionChanged()V

    .line 162
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 164
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    .line 165
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mPreProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mListener:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;->onDirectionChanged()V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->invalidate()V

    .line 173
    :cond_3
    int-to-float v0, p1

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mPreProgress:F

    .line 174
    return-void

    .line 144
    :cond_4
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->_SetRightIncreasing(Z)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 188
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 190
    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mLeftMostProgress:F

    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mRightMostProgress:F

    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 195
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 196
    .local v1, l:F
    iget v3, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    .line 201
    .local v3, r:F
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 205
    .end local v1           #l:F
    .end local v3           #r:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 206
    return-void

    .line 198
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    .line 199
    .restart local v1       #l:F
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3       #r:F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 106
    int-to-float v0, p1

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    .line 107
    int-to-float v0, p2

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mHeight:F

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    return-void
.end method
