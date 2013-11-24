.class public Lcom/pantech/app/vegacamera/controller/RotateControl;
.super Ljava/lang/Object;
.source "RotateControl.java"


# instance fields
.field mListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public addObject(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    .line 56
    :cond_0
    return-void
.end method

.method public setDegree(I)V
    .locals 4
    .parameter "degree"

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 49
    return-void

    .line 31
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/RotateControl;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 32
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v3, :cond_2

    .line 33
    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/RotateTextView;

    if-eqz v3, :cond_3

    .line 35
    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateTextView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/RotateTextView;->setDegree(I)V

    goto :goto_1

    .line 45
    :catch_0
    move-exception v3

    goto :goto_1

    .line 36
    .restart local v2       #view:Landroid/view/View;
    :cond_3
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v3, :cond_4

    .line 37
    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    goto :goto_1

    .line 38
    .restart local v2       #view:Landroid/view/View;
    :cond_4
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    if-eqz v3, :cond_5

    .line 39
    check-cast v2, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->setOrientation(I)V

    goto :goto_1

    .line 40
    .restart local v2       #view:Landroid/view/View;
    :cond_5
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/CameraTips;

    if-eqz v3, :cond_6

    .line 41
    check-cast v2, Lcom/pantech/app/vegacamera/ui/CameraTips;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/CameraTips;->setOrientation(I)V

    goto :goto_1

    .line 42
    .restart local v2       #view:Landroid/view/View;
    :cond_6
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    if-eqz v3, :cond_1

    .line 43
    check-cast v2, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
