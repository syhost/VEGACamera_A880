.class public Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
.super Landroid/widget/FrameLayout;
.source "Tutorial_Layout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;
    }
.end annotation


# static fields
.field public static final CLING_TUTORIAL_01:I = 0x0

.field public static final CLING_TUTORIAL_02:I = 0x1

.field public static final DIMISS_TUTORIAL:I = 0x3


# instance fields
.field private change:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;

.field private mChild:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mFadeInAni:Landroid/view/animation/Animation;

.field private mFadeOutAni:Landroid/view/animation/Animation;

.field private mIsInitialized:Z

.field private mOrientation:I

.field private mbDimiss:Landroid/widget/Button;

.field private mbNext:Landroid/widget/Button;

.field private mbPrev:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private clingNext()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setClingContent(I)V

    .line 193
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mCurrentIndex:I

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->change:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mCurrentIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;->OnChangePage(I)V

    .line 195
    return-void
.end method

.method private clingPrev()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setClingContent(I)V

    .line 199
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mCurrentIndex:I

    .line 200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->change:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mCurrentIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;->OnChangePage(I)V

    .line 201
    return-void
.end method

.method private init_Child(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 273
    return-void
.end method

.method private setClingContent(I)V
    .locals 4
    .parameter "contentType"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 162
    packed-switch p1, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 164
    :pswitch_1
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_01:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 165
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_02:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_confirm_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init_Child(I)V

    goto :goto_0

    .line 173
    :pswitch_2
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_01:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 174
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial_02:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_confirm_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init_Child(I)V

    goto/16 :goto_0

    .line 182
    :pswitch_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_confirm_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->cleanup()V

    .line 186
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public SetOnTutorialChangeListener(Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->change:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;

    .line 64
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mIsInitialized:Z

    .line 119
    return-void
.end method

.method public dimiss()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 204
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setClingContent(I)V

    .line 205
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mCurrentIndex:I

    .line 206
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->change:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mCurrentIndex:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;->OnChangePage(I)V

    .line 207
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 127
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mIsInitialized:Z

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 131
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .local v1, c:Landroid/graphics/Canvas;
    const/high16 v2, -0x3400

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 222
    .local v0, keyCode:I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 223
    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->requestFocus()Z

    .line 226
    const/4 v1, 0x1

    .line 229
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 234
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 235
    .local v1, focuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, p1

    .line 240
    :goto_0
    return-object v0

    .line 235
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 236
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    goto :goto_0
.end method

.method public getCurrentContent()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tutorial_01:I

    if-ne v0, v1, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tutorial_02:I

    if-ne v0, v1, :cond_1

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const-wide/16 v1, 0x96

    .line 84
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 85
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tutorial01_cling_next:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mbNext:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mbNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcom/pantech/app/vegacamera/R$id;->cling_backtostart:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mbPrev:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mbPrev:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v0, Lcom/pantech/app/vegacamera/R$id;->cling_dismiss:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mbDimiss:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mbDimiss:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mFadeInAni:Landroid/view/animation/Animation;

    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mFadeInAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mFadeOutAni:Landroid/view/animation/Animation;

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mFadeOutAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mFadeOutAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setClingContent(I)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mIsInitialized:Z

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->invalidate()V

    .line 114
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->requestFocus()Z

    .line 115
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mIsInitialized:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tutorial01_cling_next:I

    if-ne v0, v1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->clingNext()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling_backtostart:I

    if-ne v0, v1, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->clingPrev()V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling_dismiss:I

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->dimiss()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init_Child(I)V

    .line 266
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 277
    sub-int v1, p4, p2

    .line 278
    .local v1, width:I
    sub-int v0, p5, p3

    .line 279
    .local v0, height:I
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 282
    :sswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 286
    :sswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v4, 0x0

    .line 293
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 294
    .local v0, h:I
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 308
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setMeasuredDimension(II)V

    .line 310
    iget v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 328
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 329
    return-void

    .line 297
    :sswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->measureChild(Landroid/view/View;II)V

    .line 298
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 300
    goto :goto_0

    .line 303
    :sswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->measureChild(Landroid/view/View;II)V

    .line 304
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 312
    :sswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 313
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 316
    :sswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 317
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 320
    :sswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 321
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 324
    :sswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 325
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 310
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public setOrientation(II)V
    .locals 1
    .parameter "currentIndex"
    .parameter "orientation"

    .prologue
    .line 333
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    rem-int/lit16 p2, p2, 0x168

    .line 337
    iput p2, p0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->mOrientation:I

    .line 339
    :cond_0
    if-nez p1, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->clingPrev()V

    .line 344
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->requestLayout()V

    .line 345
    return-void

    .line 341
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->clingNext()V

    goto :goto_0
.end method
