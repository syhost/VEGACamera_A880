.class public Lcom/pantech/app/vegacamera/ui/CameraTips;
.super Landroid/widget/FrameLayout;
.source "CameraTips.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;
    }
.end annotation


# static fields
.field private static final LANDSCAPE:I = 0x0

.field private static final LEFT_BUTTON:I = 0x0

.field private static final MIDDLE_TEXTVIEW:I = 0x1

.field private static final PORTRAIT:I = 0x1

.field private static final RIGHT_BUTTON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraTips"


# instance fields
.field private isShow:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentView:Landroid/view/ViewGroup;

.field private mLeftBtn:Landroid/widget/Button;

.field private mListener:Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;

.field private mMiddleTextView:Landroid/widget/TextView;

.field private mOrientation:I

.field private mRightBtn:Landroid/widget/Button;

.field private mTutorialCount:I

.field private mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

.field private mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 23
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 25
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    .line 27
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    .line 33
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 23
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 25
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    .line 27
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    .line 33
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    .line 58
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private changeButtons(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "buttonView"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 267
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 268
    .local v0, leftButton:Landroid/widget/Button;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 269
    .local v1, rightButton:Landroid/widget/Button;
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    if-nez v2, :cond_1

    .line 271
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->nfc_confim:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    if-lez v2, :cond_0

    .line 278
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-le v2, v3, :cond_4

    .line 279
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-lez v2, :cond_3

    .line 281
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->cling_backtostart:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    :cond_2
    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->cling_next:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_3
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-nez v2, :cond_2

    .line 286
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 294
    :cond_4
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-ne v2, v3, :cond_0

    .line 295
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-lez v2, :cond_6

    .line 297
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->cling_backtostart:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    :cond_5
    :goto_2
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->nfc_confim:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_6
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-nez v2, :cond_5

    .line 302
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private changeMiddleText(IILandroid/view/ViewGroup;)V
    .locals 3
    .parameter "index"
    .parameter "totalCount"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    .line 317
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    return-void
.end method

.method private changeTutorial(Lcom/pantech/app/vegacamera/ui/CameraTipsView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 252
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->setOrientation(I)V

    .line 253
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->setIndex(I)V

    .line 254
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentButtonLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeButtons(Landroid/view/ViewGroup;)V

    .line 255
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentButtonLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeMiddleText(IILandroid/view/ViewGroup;)V

    .line 256
    return-void
.end method

.method private getCurrentButtonLayout()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 323
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 325
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private getCurrentTutorial()Lcom/pantech/app/vegacamera/ui/CameraTipsView;
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 262
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    goto :goto_0
.end method

.method private setCurrentIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 248
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    .line 249
    return-void
.end method


# virtual methods
.method public OnBackPressed()V
    .locals 3

    .prologue
    .line 335
    const-string v0, "CameraTips"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnBackPressed go to previous mCurrentIndex "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-lez v0, :cond_0

    .line 338
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setCurrentIndex(I)V

    .line 339
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentTutorial()Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeTutorial(Lcom/pantech/app/vegacamera/ui/CameraTipsView;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->remove()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 159
    .local v0, id:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 160
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    if-lez v1, :cond_0

    .line 162
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setCurrentIndex(I)V

    .line 163
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentTutorial()Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeTutorial(Lcom/pantech/app/vegacamera/ui/CameraTipsView;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-ne v1, v2, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->remove()V

    goto :goto_0

    .line 169
    :cond_3
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    if-le v1, v2, :cond_0

    .line 171
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setCurrentIndex(I)V

    .line 172
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentTutorial()Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeTutorial(Lcom/pantech/app/vegacamera/ui/CameraTipsView;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tip_view_land:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 68
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tip_view_port:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    .line 72
    sget v0, Lcom/pantech/app/vegacamera/R$id;->left_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    .line 73
    sget v0, Lcom/pantech/app/vegacamera/R$id;->right_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    .line 74
    sget v0, Lcom/pantech/app/vegacamera/R$id;->middle_text:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 80
    sub-int v1, p4, p2

    .line 81
    .local v1, width:I
    sub-int v0, p5, p3

    .line 82
    .local v0, height:I
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :sswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 90
    :sswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 82
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
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 98
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 99
    .local v0, h:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setMeasuredDimension(II)V

    .line 134
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 117
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setMeasuredDimension(II)V

    .line 118
    const-string v2, "CameraTips"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "w "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 123
    :sswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 124
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 125
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    goto :goto_0

    .line 106
    :sswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/ui/CameraTips;->measureChild(Landroid/view/View;II)V

    .line 107
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 108
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 109
    goto :goto_1

    .line 112
    :sswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->measureChild(Landroid/view/View;II)V

    .line 113
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    .line 129
    :sswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 130
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 131
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    goto/16 :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 120
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public remove()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->isShow:Z

    .line 212
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    .line 215
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->remove()V

    .line 219
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->remove()V

    .line 223
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 226
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 229
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 232
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    .line 239
    :cond_5
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mListener:Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mListener:Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;->OnCameraTipRemove()V

    .line 243
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mListener:Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;

    .line 245
    :cond_6
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mListener:Lcom/pantech/app/vegacamera/ui/CameraTips$Listener;

    .line 63
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->isShow:Z

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    .line 141
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 143
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentButtonLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentTutorial()Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeTutorial(Lcom/pantech/app/vegacamera/ui/CameraTipsView;)V

    .line 149
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->requestLayout()V

    goto :goto_0
.end method

.method public show(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->isShow:Z

    .line 179
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    if-nez v0, :cond_0

    .line 182
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tip_view_land:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 183
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->init()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    if-nez v0, :cond_1

    .line 186
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tip_view_port:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    .line 187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialPort:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->init()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialLand:Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mTutorialCount:I

    .line 191
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentIndex:I

    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 194
    sget v0, Lcom/pantech/app/vegacamera/R$id;->left_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mLeftBtn:Landroid/widget/Button;

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    if-nez v0, :cond_3

    .line 196
    sget v0, Lcom/pantech/app/vegacamera/R$id;->right_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mRightBtn:Landroid/widget/Button;

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 198
    sget v0, Lcom/pantech/app/vegacamera/R$id;->middle_text:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mMiddleTextView:Landroid/widget/TextView;

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    :cond_5
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mOrientation:I

    .line 204
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentButtonLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    .line 205
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTips;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->getCurrentTutorial()Lcom/pantech/app/vegacamera/ui/CameraTipsView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->changeTutorial(Lcom/pantech/app/vegacamera/ui/CameraTipsView;)V

    .line 207
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTips;->requestLayout()V

    .line 208
    return-void
.end method
