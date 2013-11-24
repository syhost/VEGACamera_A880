.class public Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "FilterDeleteSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;,
        Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
    }
.end annotation


# static fields
.field private static final REQUEST_ADD:I = 0x1

.field private static final REQUEST_CLEAR:I = 0x3

.field private static final REQUEST_REMOVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FilterDeleteSet"


# instance fields
.field private final mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private mCurrent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaItemCount:I

.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V
    .locals 3
    .parameter "path"
    .parameter "baseSet"

    .prologue
    .line 72
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 73
    const-string v0, "FilterDeleteSet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FilterDeleteSet path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "baseSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 76
    return-void
.end method

.method private sendRequest(ILcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 3
    .parameter "type"
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 240
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;

    invoke-direct {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;-><init>(ILcom/pantech/app/vegacamera/bridge/data/Path;I)V

    .line 241
    .local v0, r:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->notifyContentChanged()V

    .line 245
    return-void

    .line 241
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addDeletion(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->sendRequest(ILcom/pantech/app/vegacamera/bridge/data/Path;I)V

    .line 255
    return-void
.end method

.method public clearDeletion()V
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->sendRequest(ILcom/pantech/app/vegacamera/bridge/data/Path;I)V

    .line 263
    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const-string v8, "FilterDeleteSet"

    const-string v9, "getMediaItem"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-gtz p2, :cond_1

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_0
    return-object v0

    .line 119
    :cond_1
    add-int v8, p1, p2

    add-int/lit8 v2, v8, -0x1

    .line 120
    .local v2, end:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 123
    .local v7, n:I
    const/4 v3, 0x0

    .line 124
    .local v3, i:I
    const/4 v3, 0x0

    :goto_0
    if-lt v3, v7, :cond_4

    .line 130
    :cond_2
    move v4, v3

    .line 131
    .local v4, j:I
    :goto_1
    if-lt v4, v7, :cond_5

    .line 138
    :cond_3
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    add-int v9, p1, v3

    sub-int v10, v4, v3

    add-int/2addr v10, p2

    invoke-virtual {v8, v9, v10}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 139
    .local v0, base:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const-string v8, "FilterDeleteSet"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getMediaItem base :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v6, v4, -0x1

    .local v6, m:I
    :goto_2
    if-lt v6, v3, :cond_0

    .line 143
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    .line 144
    .local v1, d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    add-int v9, p1, v3

    sub-int v5, v8, v9

    .line 145
    .local v5, k:I
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 125
    .end local v0           #base:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    .end local v1           #d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v6           #m:I
    :cond_4
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    .line 126
    .restart local v1       #d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v8, v3

    if-gt v8, p1, :cond_2

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v1           #d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    .restart local v4       #j:I
    :cond_5
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    .line 133
    .restart local v1       #d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v8, v4

    if-gt v8, v2, :cond_3

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 85
    const-string v0, "FilterDeleteSet"

    const-string v1, "getMediaItemCount"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mMediaItemCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeletions()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "FilterDeleteSet"

    const-string v1, "onContentDirty"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->notifyContentChanged()V

    .line 251
    return-void
.end method

.method public reload()J
    .locals 22

    .prologue
    .line 153
    const-string v17, "FilterDeleteSet"

    const-string v18, "reload"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-lez v17, :cond_0

    const/4 v12, 0x1

    .line 155
    .local v12, newData:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 156
    if-nez v12, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v17, v0

    monitor-exit v19

    .line 236
    :goto_1
    return-wide v17

    .line 154
    .end local v12           #newData:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 159
    .restart local v12       #newData:Z
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 155
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v17

    iget v10, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    .line 203
    .local v10, minIndex:I
    move v9, v10

    .line 204
    .local v9, maxIndex:I
    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v11

    .line 211
    .local v11, n:I
    add-int/lit8 v17, v10, -0x5

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 212
    .local v4, from:I
    add-int/lit8 v17, v9, 0x5

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 213
    .local v16, to:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-object/from16 v17, v0

    sub-int v18, v16, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 214
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;>;"
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_9

    .line 231
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 234
    .end local v4           #from:I
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    .end local v9           #maxIndex:I
    .end local v10           #minIndex:I
    .end local v11           #n:I
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;>;"
    .end local v16           #to:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mMediaItemCount:I

    .line 235
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->nextVersionNumber()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mDataVersion:J

    .line 236
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v17, v0

    goto/16 :goto_1

    .line 160
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;

    .line 161
    .local v14, r:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
    iget v0, v14, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->type:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 159
    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 163
    :pswitch_0
    const-string v17, "FilterDeleteSet"

    const-string v18, "REQUEST_ADD"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 167
    .restart local v11       #n:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_6
    if-lt v8, v11, :cond_6

    .line 171
    :cond_5
    if-ne v8, v11, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    iget-object v0, v14, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object/from16 v20, v0

    iget v0, v14, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->indexHint:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 155
    .end local v5           #i:I
    .end local v8           #j:I
    .end local v11           #n:I
    .end local v14           #r:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
    :catchall_0
    move-exception v17

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 168
    .restart local v5       #i:I
    .restart local v8       #j:I
    .restart local v11       #n:I
    .restart local v14       #r:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 177
    .end local v8           #j:I
    .end local v11           #n:I
    :pswitch_1
    const-string v17, "FilterDeleteSet"

    const-string v18, "REQUEST_REMOVE"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 180
    .restart local v11       #n:I
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_7
    if-ge v8, v11, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_5

    .line 180
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 189
    .end local v8           #j:I
    .end local v11           #n:I
    :pswitch_2
    const-string v17, "FilterDeleteSet"

    const-string v18, "REQUEST_CLEAR"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 205
    .end local v14           #r:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Request;
    .restart local v9       #maxIndex:I
    .restart local v10       #minIndex:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    .line 206
    .local v3, d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 207
    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 216
    .end local v3           #d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    .restart local v4       #from:I
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    .restart local v11       #n:I
    .restart local v15       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;>;"
    .restart local v16       #to:I
    :cond_9
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 217
    .local v6, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v6, :cond_b

    .line 215
    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 219
    :cond_b
    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v13

    .line 221
    .local v13, p:Lcom/pantech/app/vegacamera/bridge/data/Path;
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;

    .line 223
    .restart local v3       #d:Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;
    iget-object v0, v3, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v13, :cond_c

    .line 224
    add-int v17, v4, v5

    move/from16 v0, v17

    iput v0, v3, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet$Deletion;->index:I

    .line 225
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 221
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDeletion(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 258
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;->sendRequest(ILcom/pantech/app/vegacamera/bridge/data/Path;I)V

    .line 259
    return-void
.end method
