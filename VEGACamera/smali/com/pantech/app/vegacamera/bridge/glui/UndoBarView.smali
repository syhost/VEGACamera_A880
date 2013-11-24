.class public Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;
.super Lcom/pantech/app/vegacamera/bridge/glui/GLView;
.source "UndoBarView.java"


# static fields
.field private static ANIM_TIME:J = 0x0L

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "UndoBarView"

.field private static final WHITE:I = -0x1


# instance fields
.field private mAlpha:F

.field private mAnimationStartTime:J

.field private final mBarHeight:I

.field private final mBarMargin:I

.field private final mClickRegion:I

.field private mDownOnButton:Z

.field private mFromAlpha:F

.field private final mIconMargin:I

.field private final mIconSize:I

.field private mOnClickListener:Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;

.field private final mPanel:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

.field private final mSelectedBackground:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

.field private mToAlpha:F

.field private final mUndoIcon:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

.field private final mUndoText:Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

.field private final mUndoTextMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->ANIM_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;-><init>()V

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_view_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarMargin:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_view_text_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoTextMargin:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_view_icon_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconMargin:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconSize:I

    .line 61
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_undo_bg:I

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mPanel:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_undo_bg_sel:I

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mSelectedBackground:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    .line 63
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_undo:I

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoIcon:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    .line 65
    sget v0, Lcom/pantech/app/vegacamera/R$string;->undo:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_view_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoText:Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoText:Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mClickRegion:I

    .line 68
    return-void
.end method

.method private advanceAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 189
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-wide v2, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->ANIM_TIME:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 193
    .local v0, delta:F
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mFromAlpha:F

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mToAlpha:F

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mFromAlpha:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .end local v0           #delta:F
    :goto_1
    add-float/2addr v1, v0

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    .line 194
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    const/high16 v2, 0x3f80

    invoke-static {v1, v5, v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    .line 196
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 197
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    .line 198
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 199
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->setVisibility(I)V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->invalidate()V

    goto :goto_0

    .line 193
    .restart local v0       #delta:F
    :cond_2
    neg-float v0, v0

    goto :goto_1
.end method

.method private static getTargetAlpha(I)F
    .locals 1
    .parameter "visibility"

    .prologue
    .line 160
    if-nez p0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inUndoButton(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 141
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 142
    .local v3, y:F
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getWidth()I

    move-result v1

    .line 143
    .local v1, w:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getHeight()I

    move-result v0

    .line 144
    .local v0, h:I
    const-string v4, "UndoBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inUndoButton x:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " w:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mClickRegion:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const-wide/16 v3, -0x1

    .line 173
    const-string v1, "UndoBarView"

    const-string v2, "animateVisibility"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    .line 175
    .local v0, target:F
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 180
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mFromAlpha:F

    .line 181
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mToAlpha:F

    .line 182
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    .line 184
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 76
    const/4 v0, 0x0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->setMeasuredSize(II)V

    .line 77
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 116
    :pswitch_1
    const-string v0, "UndoBarView"

    const-string v1, "ACTION_DOWN"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mDownOnButton:Z

    .line 118
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->invalidate()V

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "UndoBarView"

    const-string v1, "ACTION_UP"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mDownOnButton:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mOnClickListener:Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mOnClickListener:Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;->onClick(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 126
    :cond_0
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mDownOnButton:Z

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->invalidate()V

    goto :goto_0

    .line 131
    :pswitch_3
    const-string v0, "UndoBarView"

    const-string v1, "ACTION_CANCEL"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public orientationChanged(I)V
    .locals 3
    .parameter "mCompensation"

    .prologue
    .line 206
    const-string v0, "UndoBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orientationChanged mCompensation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mDownOnButton:Z

    .line 209
    return-void
.end method

.method protected render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 83
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->advanceAnimation()V

    .line 85
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 86
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getWidth()I

    move-result v7

    .line 89
    .local v7, w:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getHeight()I

    move-result v6

    .line 91
    .local v6, h:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mPanel:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mClickRegion:I

    sub-int v2, v7, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    sub-int v1, v6, v1

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoTextMargin:I

    sub-int v3, v1, v4

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mClickRegion:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarMargin:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mSelectedBackground:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mSelectedBackground:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mClickRegion:I

    sub-int v2, v7, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    sub-int v1, v6, v1

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoTextMargin:I

    sub-int v3, v1, v4

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mClickRegion:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarMargin:I

    sub-int v4, v1, v4

    .line 95
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    move-object v1, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 98
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarMargin:I

    sub-int v8, v7, v0

    .line 101
    .local v8, x:I
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoTextMargin:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoText:Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v8, v0

    .line 102
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoText:Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoTextMargin:I

    sub-int v9, v0, v1

    .line 103
    .local v9, y:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoText:Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;

    invoke-virtual {v0, p1, v8, v9}, Lcom/pantech/app/vegacamera/bridge/glui/StringTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    .line 105
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarMargin:I

    sub-int v0, v7, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconMargin:I

    sub-int v2, v0, v1

    .line 106
    .local v2, undoIconx:I
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mBarHeight:I

    sub-int v0, v6, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    .line 107
    .local v3, undoIcony:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mUndoIcon:Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconSize:I

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mIconSize:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 109
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 110
    return-void
.end method

.method public setOnClickListener(Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mOnClickListener:Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;

    .line 72
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 165
    const-string v0, "UndoBarView"

    const-string v1, "setVisibility"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAlpha:F

    .line 167
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->mAnimationStartTime:J

    .line 168
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->invalidate()V

    .line 170
    return-void
.end method
