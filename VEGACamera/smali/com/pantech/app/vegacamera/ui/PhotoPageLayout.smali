.class public Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
.super Landroid/widget/RelativeLayout;
.source "PhotoPageLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;
    }
.end annotation


# static fields
.field public static final MEDIATYPE_IMAGE:I = 0x0

.field public static final MEDIATYPE_VIDEO:I = 0x1


# instance fields
.field deleteButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field editButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field facttagButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private leftLayout:Landroid/widget/LinearLayout;

.field private mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

.field private mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private rightLayout:Landroid/widget/RelativeLayout;

.field shareButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 33
    return-void
.end method


# virtual methods
.method public LayoutInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedFaceTagging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget v0, Lcom/pantech/app/vegacamera/R$id;->facetag_layout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/R$id;->share_layout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 45
    sget v0, Lcom/pantech/app/vegacamera/R$id;->delete_layout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 46
    sget v0, Lcom/pantech/app/vegacamera/R$id;->edit_layout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 47
    sget v0, Lcom/pantech/app/vegacamera/R$id;->undo_button:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 48
    sget v0, Lcom/pantech/app/vegacamera/R$id;->photopage_left:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->leftLayout:Landroid/widget/LinearLayout;

    .line 49
    sget v0, Lcom/pantech/app/vegacamera/R$id;->undo_layout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->rightLayout:Landroid/widget/RelativeLayout;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public hideView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->rightLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 105
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedFaceTagging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;->onFacetagButtonSelect()V

    .line 137
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 128
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;->onShareButtonSelect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 130
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;->onDeleteButtonSelect()V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;->onEditButtonSelect()V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;->onUndoButtonSelect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mListener:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;

    .line 142
    return-void
.end method

.method public setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 57
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedFaceTagging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 69
    :cond_4
    return-void
.end method

.method public showView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 92
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedFaceTagging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->undoButton:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public updateMenuItem(I)V
    .locals 4
    .parameter "supported"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 115
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mShareLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mDeleteLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mEditLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setVisibility(I)V

    .line 118
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedFaceTagging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->mFacetagLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    const/high16 v3, 0x2

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setVisibility(I)V

    .line 121
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0

    :cond_2
    move v0, v2

    .line 116
    goto :goto_1

    :cond_3
    move v0, v2

    .line 117
    goto :goto_2

    :cond_4
    move v1, v2

    .line 119
    goto :goto_3
.end method
