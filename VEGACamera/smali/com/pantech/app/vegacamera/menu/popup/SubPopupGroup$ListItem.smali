.class Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;
.super Ljava/lang/Object;
.source "SubPopupGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItem"
.end annotation


# instance fields
.field private _SubPopupIconIV:Landroid/view/View;

.field private _SubPopupLayout:Landroid/view/View;

.field private _SubSelectdIv:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;

.field private viewer:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layoutID"

    .prologue
    const/4 v1, 0x0

    .line 188
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->this$0:Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->inflater:Landroid/view/LayoutInflater;

    .line 182
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->viewer:Landroid/view/View;

    .line 184
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupLayout:Landroid/view/View;

    .line 185
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupIconIV:Landroid/view/View;

    .line 186
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubSelectdIv:Landroid/view/View;

    .line 189
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->inflater:Landroid/view/LayoutInflater;

    .line 190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->viewer:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupLayout:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->access$1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupIconIV:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup;->access$2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubSelectdIv:Landroid/view/View;

    .line 195
    return-void
.end method


# virtual methods
.method public ItemLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupLayout:Landroid/view/View;

    return-object v0
.end method

.method public ItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->viewer:Landroid/view/View;

    return-object v0
.end method

.method public SetSelected(Z)V
    .locals 2
    .parameter "isSelected"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubSelectdIv:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubSelectdIv:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetView(II)V
    .locals 1
    .parameter "icon"
    .parameter "viewId"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupLayout:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SubPopupGroup$ListItem;->_SubPopupIconIV:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    return-void
.end method
