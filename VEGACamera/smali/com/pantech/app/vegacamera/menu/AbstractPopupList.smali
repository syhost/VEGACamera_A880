.class public abstract Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.super Lcom/pantech/app/vegacamera/ui/RotateLayout;
.source "AbstractPopupList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractPopupList"


# instance fields
.field protected mPopUpGrid:Landroid/view/ViewGroup;

.field protected mSettingList:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->mSettingList:Landroid/view/ViewGroup;

    .line 15
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->mPopUpGrid:Landroid/view/ViewGroup;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract _ReloadPreference()V
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "AbstractPopupList"

    const-string v1, "[MenuController] onFinishInflate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->onFinishInflate()V

    .line 25
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_list_vg:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->mSettingList:Landroid/view/ViewGroup;

    .line 26
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_grid_vg:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->mPopUpGrid:Landroid/view/ViewGroup;

    .line 27
    return-void
.end method
