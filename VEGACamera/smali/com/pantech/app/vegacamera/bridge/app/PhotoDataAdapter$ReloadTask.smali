.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1106
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1107
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1108
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 4
    .parameter "info"

    .prologue
    .line 1205
    const-string v2, "PhotoDataAdapter"

    const-string v3, "findCurrentMediaItem"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1207
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    iget v2, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v3, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v2, v3

    .line 1208
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    goto :goto_0
.end method

.method private findIndexOfPathInCache(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;Lcom/pantech/app/vegacamera/bridge/data/Path;)I
    .locals 6
    .parameter "info"
    .parameter "path"

    .prologue
    .line 1229
    const-string v4, "PhotoDataAdapter"

    const-string v5, "findIndexOfPathInCache"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v2, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1231
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 1237
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 1232
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 1233
    .local v1, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 1234
    iget v4, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v4, v0

    goto :goto_1

    .line 1231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findIndexOfTarget(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 5
    .parameter "info"

    .prologue
    .line 1212
    const-string v2, "PhotoDataAdapter"

    const-string v3, "findIndexOfTarget"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v2, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-nez v2, :cond_1

    .line 1214
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1225
    :cond_0
    :goto_0
    return v0

    .line 1215
    :cond_1
    iget-object v1, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1218
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    if-eqz v1, :cond_2

    .line 1219
    iget-object v2, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-direct {p0, p1, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v0

    .line 1220
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1225
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v2

    iget-object v3, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget v4, p1, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getIndexOfItem(Lcom/pantech/app/vegacamera/bridge/data/Path;I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 1113
    const-string v0, "PhotoDataAdapter"

    const-string v1, "updateLoading"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 2

    .prologue
    .line 1193
    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoDataAdapter"

    const-string v1, "notifyDirty"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    monitor-exit p0

    return-void

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1122
    const-string v6, "PhotoDataAdapter"

    const-string v7, "ReloadTask run"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_0
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-nez v6, :cond_0

    .line 1190
    return-void

    .line 1124
    :cond_0
    monitor-enter p0

    .line 1125
    :try_start_0
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_1

    .line 1126
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1127
    invoke-static {p0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 1128
    monitor-exit p0

    goto :goto_0

    .line 1124
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    iput-boolean v12, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1132
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    new-instance v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {v7, v8, v13}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;)V

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;

    .line 1133
    .local v2, info:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;
    sget-object v7, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 1134
    const/4 v6, 0x1

    :try_start_2
    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1135
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v4

    .line 1136
    .local v4, version:J
    iget-wide v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2

    .line 1137
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1138
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v6

    iput v6, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1140
    :cond_2
    iget-boolean v6, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v6, :cond_3

    .line 1141
    monitor-exit v7

    goto :goto_0

    .line 1133
    .end local v4           #version:J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1142
    .restart local v4       #version:J
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSource:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$27(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v6

    iget v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v9, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    invoke-virtual {v6, v8, v9}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1144
    const/4 v1, -0x1

    .line 1147
    .local v1, index:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$28(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1148
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$28(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v1

    .line 1149
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    const/4 v8, 0x0

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$29(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1153
    :cond_4
    if-ne v1, v11, :cond_5

    .line 1154
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v3

    .line 1155
    .local v3, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    iget-object v8, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v6, v8, :cond_a

    .line 1156
    iget v1, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1169
    .end local v3           #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_5
    :goto_1
    if-ne v1, v11, :cond_7

    .line 1170
    iget v1, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1171
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mFocusHintDirection:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$30(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v0

    .line 1172
    .local v0, focusHintDirection:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCameraIndex:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$31(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v1, v6, :cond_6

    .line 1173
    const/4 v0, 0x0

    .line 1175
    :cond_6
    if-ne v0, v10, :cond_7

    if-lez v1, :cond_7

    .line 1176
    add-int/lit8 v1, v1, -0x1

    .line 1181
    .end local v0           #focusHintDirection:I
    :cond_7
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v6

    if-lez v6, :cond_9

    .line 1182
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v6

    if-lt v1, v6, :cond_8

    .line 1183
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 1184
    :cond_8
    iput v1, v2, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1133
    :cond_9
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1188
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    new-instance v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {v7, v8, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)V

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$26(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1158
    .restart local v3       #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_a
    :try_start_4
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    goto :goto_1
.end method

.method public declared-synchronized terminate()V
    .locals 2

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoDataAdapter"

    const-string v1, "terminate"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1201
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    monitor-exit p0

    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
