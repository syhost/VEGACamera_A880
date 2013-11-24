.class public Lcom/pantech/app/vegacamera/ui/OjtView;
.super Lcom/pantech/app/vegacamera/ui/FocusIndicator;
.source "OjtView.java"


# instance fields
.field focus_close:Landroid/view/animation/Animation;

.field private mDisplayOrientation:I

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mRect:Landroid/graphics/RectF;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/OjtView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_touch_ing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/OjtView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/OjtView;->invalidate()V

    .line 131
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->focus_close:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 67
    sget v0, Lcom/pantech/app/vegacamera/R$anim;->focus_close:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->focus_close:Landroid/view/animation/Animation;

    .line 69
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMirror:Z

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/OjtView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/OjtView;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->PrepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 143
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 152
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 151
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 163
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mMatrix:Landroid/graphics/Matrix;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 166
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mRect:Landroid/graphics/RectF;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 169
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 172
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->focus_close:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 175
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->focus_close:Landroid/view/animation/Animation;

    .line 177
    :cond_4
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 113
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mDisplayOrientation:I

    .line 114
    return-void
.end method

.method public setOperRect(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "type"
    .parameter "operect"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, state:Z
    if-nez p2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p2, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->rect:Landroid/graphics/Rect;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/OjtView;->invalidate()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 117
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/OjtView;->mOrientation:I

    .line 118
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/OjtView;->invalidate()V

    .line 119
    return-void
.end method
