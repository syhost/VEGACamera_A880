.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mUpdateInfo:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 2
    .parameter
    .parameter "updateInfo"

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    const-string v0, "PhotoDataAdapter"

    const-string v1, "UpdateInfo)"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;

    .line 1059
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1063
    const-string v6, "PhotoDataAdapter"

    const-string v8, "UpdateContent call"

    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;

    .line 1065
    .local v4, info:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-wide v8, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v6, v8, v9}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$13(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;J)V

    .line 1067
    iget v6, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 1068
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget v8, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$14(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V

    .line 1069
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_0

    .line 1070
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$15(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V

    .line 1071
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$16(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_1

    .line 1072
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$17(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V

    .line 1075
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    iget v8, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$18(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;I)V

    .line 1076
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateSlidingWindow()V
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$19(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    .line 1078
    iget-object v6, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 1079
    iget v6, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1080
    .local v5, start:I
    iget v6, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1081
    .local v2, end:I
    rem-int/lit16 v1, v5, 0x100

    .line 1082
    .local v1, dataIndex:I
    move v3, v5

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_4

    .line 1090
    .end local v1           #dataIndex:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #start:I
    :cond_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v6

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    rem-int/lit16 v8, v8, 0x100

    aget-object v0, v6, v8

    .line 1091
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    if-nez v0, :cond_6

    move-object v6, v7

    :goto_1
    #setter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v8, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$20(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1093
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageCache()V
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$21(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    .line 1094
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateTileProvider()V
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$22(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    .line 1095
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$23(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    .line 1097
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1098
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mDataListener:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$24(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;

    move-result-object v6

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$10(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1101
    :cond_3
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->fireDataChange()V
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$25(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    .line 1102
    return-object v7

    .line 1083
    .end local v0           #current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .restart local v1       #dataIndex:I
    .restart local v2       #end:I
    .restart local v3       #i:I
    .restart local v5       #start:I
    :cond_4
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v8

    iget-object v6, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v9, v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v9, v3, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    aput-object v6, v8, v1

    .line 1084
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x100

    if-ne v1, v6, :cond_5

    .line 1085
    const/4 v1, 0x0

    .line 1082
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1091
    .end local v1           #dataIndex:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #start:I
    .restart local v0       #current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_6
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    goto :goto_1
.end method
