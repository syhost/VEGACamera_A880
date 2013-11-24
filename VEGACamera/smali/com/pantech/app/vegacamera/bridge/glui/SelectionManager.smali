.class public Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field public static final SELECT_ALL_MODE:I = 0x3


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

.field private mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isAlbumSet"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mAutoLeave:Z

    .line 53
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 55
    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mIsAlbumSet:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mTotal:I

    .line 57
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V
    .locals 10
    .parameter
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v6

    .line 156
    .local v6, subCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 160
    .local v7, total:I
    const/16 v0, 0x32

    .line 161
    .local v0, batch:I
    const/4 v3, 0x0

    .line 163
    .local v3, index:I
    :goto_1
    if-lt v3, v7, :cond_1

    .line 171
    return-void

    .line 157
    .end local v0           #batch:I
    .end local v3           #index:I
    .end local v7           #total:I
    :cond_0
    invoke-virtual {p1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .restart local v0       #batch:I
    .restart local v3       #index:I
    .restart local v7       #total:I
    :cond_1
    add-int v8, v3, v0

    if-ge v8, v7, :cond_2

    move v1, v0

    .line 165
    .local v1, count:I
    :goto_2
    invoke-virtual {p1, v3, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 166
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 169
    add-int/2addr v3, v0

    goto :goto_1

    .line 164
    .end local v1           #count:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    :cond_2
    sub-int v1, v7, v3

    goto :goto_2

    .line 166
    .restart local v1       #count:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 167
    .local v4, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mTotal:I

    if-gez v0, :cond_1

    .line 120
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mTotal:I

    .line 122
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mTotal:I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public deSelectAll()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->leaveSelectionMode()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInSelectionMode:Z

    .line 96
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 11
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    iget-boolean v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v9, :cond_6

    .line 176
    iget-boolean v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    if-eqz v9, :cond_4

    .line 177
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getTotalCount()I

    move-result v8

    .line 178
    .local v8, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v8, :cond_1

    .line 218
    .end local v1           #i:I
    .end local v8           #total:I
    :cond_0
    return-object v6

    .line 179
    .restart local v1       #i:I
    .restart local v8       #total:I
    :cond_1
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v9, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v7

    .line 180
    .local v7, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    .line 181
    .local v2, id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 182
    if-eqz p1, :cond_3

    .line 183
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    .line 178
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v1           #i:I
    .end local v2           #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v7           #set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .end local v8           #total:I
    :cond_4
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 191
    .restart local v2       #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-eqz p1, :cond_5

    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    if-eqz v10, :cond_5

    .line 192
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    invoke-virtual {v10, v2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSet(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    .end local v2           #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :cond_6
    iget-boolean v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    if-eqz v9, :cond_9

    .line 200
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getTotalCount()I

    move-result v8

    .line 201
    .restart local v8       #total:I
    const/4 v3, 0x0

    .line 202
    .local v3, index:I
    :goto_3
    if-ge v3, v8, :cond_0

    .line 203
    sub-int v9, v8, v3

    const/16 v10, 0x1f4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    .local v0, count:I
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v9, v3, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 205
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    .line 210
    add-int/2addr v3, v0

    goto :goto_3

    .line 205
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 206
    .local v4, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    .line 207
    .restart local v2       #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 208
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 213
    .end local v0           #count:I
    .end local v2           #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v3           #index:I
    .end local v4           #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    .end local v8           #total:I
    :cond_9
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 214
    .restart local v2       #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 127
    .local v0, count:I
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 130
    :cond_0
    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcom/pantech/app/vegacamera/bridge/data/Path;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInSelectionMode:Z

    .line 105
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mInverseSelection:Z

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->enterSelectionMode()V

    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mAutoLeave:Z

    .line 63
    return-void
.end method

.method public setSelectionListener(Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    .line 67
    return-void
.end method

.method public setSourceMediaSet(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mSourceMediaSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mTotal:I

    .line 224
    return-void
.end method

.method public toggle(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 143
    .local v0, count:I
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->selectAll()V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->isItemSelected(Lcom/pantech/app/vegacamera/bridge/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/pantech/app/vegacamera/bridge/data/Path;Z)V

    .line 149
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mAutoLeave:Z

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->leaveSelectionMode()V

    .line 152
    :cond_2
    return-void

    .line 137
    .end local v0           #count:I
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->enterSelectionMode()V

    .line 138
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
