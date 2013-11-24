.class public abstract Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;
.super Landroid/widget/LinearLayout;
.source "AbstractMenuItemButton.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;,
        Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractMenuItemButton"


# instance fields
.field private final DEFAULT_ALPHA:F

.field private final DISABLED_ALPHA:F

.field private final MSG_CLOSE_MENU_ITEM:I

.field private absIV:Landroid/widget/ImageView;

.field private absTV:Landroid/widget/TextView;

.field private bCurrentedItem:Z

.field private iMenuItemBottom:I

.field private iMenuItemLeft:I

.field private iMenuItemRight:I

.field private iMenuItemTop:I

.field private iOrientation:I

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field protected mAnimation:Landroid/view/animation/Animation;

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

.field protected mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput v9, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->MSG_CLOSE_MENU_ITEM:I

    .line 31
    iput v11, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->DEFAULT_ALPHA:F

    .line 32
    const v2, 0x3ecccccd

    iput v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->DISABLED_ALPHA:F

    .line 34
    iput-boolean v9, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->bCurrentedItem:Z

    .line 36
    iput v9, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iOrientation:I

    .line 38
    iput v8, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemLeft:I

    .line 39
    iput v8, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemRight:I

    .line 40
    iput v8, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemTop:I

    .line 41
    iput v8, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemBottom:I

    .line 43
    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    .line 44
    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    .line 46
    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimation:Landroid/view/animation/Animation;

    .line 47
    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 49
    iput-object v3, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

    .line 51
    new-instance v2, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;-><init>(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MainHandler;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setGravity(I)V

    .line 65
    invoke-virtual {p0, v10}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setOrientation(I)V

    .line 67
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    .line 69
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 70
    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_icon_width:I

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 70
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_icon_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    if-ne p2, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_modes_icon_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 74
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_modes_icon_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 75
    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_modes_icon_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_modes_icon_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 73
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 79
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->addView(Landroid/view/View;)V

    .line 82
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 86
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 87
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$color;->menu_item_text_color_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_1st_button_list_item_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 89
    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$color;->menu_item_text_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v11, v11, v11, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 92
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .local v0, margin:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->menu_control_bar_item_text_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v9, v2, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    sget v2, Lcom/pantech/app/vegacamera/R$anim;->fade_in_grow:I

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimation:Landroid/view/animation/Animation;

    .line 99
    invoke-static {p1}, Lcom/pantech/app/vegacamera/menu/PopupManager;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/menu/PopupManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/menu/PopupManager;->SetOnOtherPopupShowedListener(Lcom/pantech/app/vegacamera/menu/PopupManager$OnOtherPopupShowedListener;)V

    .line 100
    invoke-virtual {p0, v10}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setClickable(Z)V

    .line 102
    sget v2, Lcom/pantech/app/vegacamera/R$anim;->menu_2depth_slide_in:I

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 103
    return-void
.end method

.method private _DrawIconViewSelector()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_IsCurrentedItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .end local v0           #filter:Landroid/graphics/ColorFilter;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_item_image_color_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 126
    .restart local v0       #filter:Landroid/graphics/ColorFilter;
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    :cond_1
    return-void
.end method

.method private _DrawTitleViewCurrentPosition()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_item_text_color_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 133
    .local v0, color:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_IsCurrentedItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_item_text_color_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    :cond_1
    return-void
.end method

.method private _Free()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 375
    return-void
.end method

.method private _SetCurrentedItem(Z)V
    .locals 0
    .parameter "currented"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->bCurrentedItem:Z

    .line 189
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_UpdateGroupTitle()V

    .line 190
    return-void
.end method


# virtual methods
.method public CloseMenuItem()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string v1, "AbstractMenuItemButton"

    const-string v2, "[MenuController] CloseMenuItem()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_SetCurrentedItem(Z)V

    .line 235
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseSubPopup()Z

    .line 238
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->clearAnimation()V

    .line 239
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setVisibility(I)V

    .line 241
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->invalidate()V

    .line 245
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v2

    invoke-interface {v1, p0, v0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;->OnOpenMenuItemDepth(Landroid/view/View;ZI)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_MODES_GROUP_MENU_ITEM:I

    if-ne v0, v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->RemovePopupWindow()V

    .line 252
    :cond_1
    const/4 v0, 0x1

    .line 254
    :cond_2
    return v0
.end method

.method protected CloseMenuItemDelayed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] CloseMenuItemDelayed()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    :cond_0
    return-void
.end method

.method public CloseSubPopup()Z
    .locals 2

    .prologue
    .line 258
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] CloseSubPopup()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public ClosedMenuItem()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_ClosedMenuItem()V

    .line 229
    return-void
.end method

.method public ExecuteMenuItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] ExecuteMenuItem()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_SetCurrentedItem(Z)V

    .line 196
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_InitMainItemPopup()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->clearAnimation()V

    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IDS_SETTINGS_GROUP_MENU_ITEM:I

    if-ne v0, v1, :cond_4

    .line 209
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getId()I

    move-result v1

    invoke-interface {v0, p0, v3, v1}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;->OnOpenMenuItemDepth(Landroid/view/View;ZI)V

    .line 223
    :cond_3
    return-void

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public GetPopupWindow()Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetSubPopupWindow()Landroid/view/View;
    .locals 2

    .prologue
    .line 271
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] GetSubPopupWindow()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public IsOverridden()Z
    .locals 2

    .prologue
    .line 175
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] IsOverridden()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public OnClick()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] AbstractMenuItemButton :: onClick()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->IsOverridden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->ExecuteMenuItem()V

    .line 314
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/PopupManager;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/menu/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/menu/PopupManager;->NotifyShowPopup(Landroid/view/View;)V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_ClosedMenuItem()V

    .line 317
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseMenuItem()Z

    goto :goto_0
.end method

.method public varargs abstract OverrideItems([Ljava/lang/String;)V
.end method

.method public ReloadPreference()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] ReloadPreference()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->_ReloadPreference()V

    .line 299
    :cond_0
    return-void
.end method

.method public RemovePopupWindow()V
    .locals 3

    .prologue
    .line 276
    const-string v1, "AbstractMenuItemButton"

    const-string v2, "[MenuController] RemovePopupWindow()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseSubPopup()Z

    .line 280
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MENU_CONTROL_LAYOUT:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 281
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    .line 285
    .end local v0           #root:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public SetButtonAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mAnimation:Landroid/view/animation/Animation;

    .line 150
    return-void
.end method

.method public SetMenuItemChangeListener(Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mListener:Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton$MenuItemChangeListener;

    .line 172
    return-void
.end method

.method public UpdateGroupTitle()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] UpdateGroupTitle()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_UpdateGroupTitle()V

    .line 292
    return-void
.end method

.method protected abstract _ClosedMenuItem()V
.end method

.method public _GetMenuItemBottom()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemBottom:I

    return v0
.end method

.method public _GetMenuItemLeft()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemLeft:I

    return v0
.end method

.method public _GetMenuItemRight()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemRight:I

    return v0
.end method

.method public _GetMenuItemTop()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemTop:I

    return v0
.end method

.method protected abstract _InitMainItemPopup()V
.end method

.method public _IsCurrentedItem()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->bCurrentedItem:Z

    return v0
.end method

.method public _SetMenuItemRect(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 351
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemLeft:I

    .line 352
    iput p2, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemTop:I

    .line 353
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemRight:I

    .line 354
    iput p4, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iMenuItemBottom:I

    .line 355
    return-void
.end method

.method public _SetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 344
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->iOrientation:I

    .line 345
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->mPopupList:Lcom/pantech/app/vegacamera/menu/AbstractPopupList;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 348
    :cond_0
    return-void
.end method

.method protected abstract _UpdateGroupTitle()V
.end method

.method public _UpdateMenuItemInfo(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 106
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_0
    if-eqz p2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->absTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 386
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 385
    throw v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_DrawIconViewSelector()V

    .line 144
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->_DrawTitleViewCurrentPosition()V

    .line 145
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    return-void
.end method

.method public onOtherPopupShowed()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "AbstractMenuItemButton"

    const-string v1, "[MenuController] onOtherPopupShowed()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->CloseMenuItem()Z

    .line 168
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->IsOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 p1, 0x0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 333
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setAlpha(F)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_2
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/AbstractMenuItemButton;->setAlpha(F)V

    goto :goto_0
.end method
