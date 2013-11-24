.class public Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "SeekBarList.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;,
        Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarList"


# instance fields
.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

.field private viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    .line 20
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;

    .line 21
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    .line 29
    return-void
.end method

.method private _LoadData()V
    .locals 7

    .prologue
    .line 42
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetItemIconIds()I

    move-result v1

    .line 45
    .local v1, iconId:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetTitleIconId()I

    move-result v4

    .line 46
    .local v4, titleiconId:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->getsThumbIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 47
    .local v3, thumbId:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->getsProgressImg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 49
    .local v2, progressImg:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivPlus:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$0(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 50
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivPlus:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$0(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivMinus:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$1(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 54
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivMinus:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$1(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 58
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 59
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$2(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    :cond_2
    return-void
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/SeekBarPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    .line 38
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->_LoadData()V

    .line 39
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;

    .line 33
    return-void
.end method

.method public _ReloadPreference()V
    .locals 4

    .prologue
    .line 68
    const-string v1, "SeekBarList"

    const-string v2, "[MenuController] _ReloadPreference()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, value:Ljava/lang/String;
    const-string v1, "SeekBarList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid preference value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->Print()V

    .line 72
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onFinishInflate()V

    .line 78
    new-instance v0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;-><init>(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    .line 80
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/pantech/app/vegacamera/R$id;->r_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivPlus:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$3(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;Landroid/widget/ImageView;)V

    .line 81
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/pantech/app/vegacamera/R$id;->l_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->ivMinus:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$4(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;Landroid/widget/ImageView;)V

    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->viewHolder:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/pantech/app/vegacamera/R$id;->seekbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    #setter for: Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;->access$5(Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$ViewHolder;Landroid/widget/SeekBar;)V

    .line 83
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->SetValue(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->mPreference:Lcom/pantech/app/vegacamera/preference/SeekBarPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/SeekBarPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 104
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 109
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/SeekBarList;->_ReloadPreference()V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setVisibility(I)V

    .line 91
    return-void
.end method
