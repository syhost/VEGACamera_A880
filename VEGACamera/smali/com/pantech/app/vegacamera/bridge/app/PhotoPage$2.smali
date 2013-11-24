.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteButtonSelect()V
    .locals 6

    .prologue
    .line 1035
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 1036
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v1

    .line 1037
    .local v1, current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v1, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1042
    :cond_0
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    .line 1044
    .local v2, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1045
    sget v4, Lcom/pantech/app/vegacamera/R$plurals;->delete_selection:I

    const/4 v5, 0x1

    .line 1044
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, confirmMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$4(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->deSelectAll()V

    .line 1047
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$4(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->toggle(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    .line 1048
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onMenuClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditButtonSelect()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 983
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 984
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 985
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v4

    .line 991
    .local v4, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v3

    .line 994
    .local v3, manager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getContentUri(Lcom/pantech/app/vegacamera/bridge/data/Path;)Landroid/net/Uri;

    move-result-object v6

    .line 994
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 996
    const/4 v6, 0x1

    .line 995
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 997
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$3(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->setOrientation(I)V

    .line 998
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 999
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x4

    .line 998
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1001
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "PhotoPage"

    const-string v6, "[PhotoPage] Fail to get ContentUri"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFacetagButtonSelect()V
    .locals 7

    .prologue
    .line 957
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 958
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 959
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v4

    .line 965
    .local v4, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v3

    .line 968
    .local v3, manager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 969
    const-string v5, "com.android.camera.action.REVIEW"

    .line 970
    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getContentUri(Lcom/pantech/app/vegacamera/bridge/data/Path;)Landroid/net/Uri;

    move-result-object v6

    .line 968
    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 971
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "facetagging"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 972
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 973
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 974
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "PhotoPage"

    const-string v6, "[VideoCamera] Can not start Face Tagging"

    invoke-static {v5, v6, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 976
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 977
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "PhotoPage"

    const-string v6, "[PhotoPage] Fail to get ContentUri"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShareButtonSelect()V
    .locals 9

    .prologue
    .line 1007
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 1008
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 1009
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v4

    .line 1015
    .local v4, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v3

    .line 1016
    .local v3, manager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaType(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v5

    .line 1019
    .local v5, type:I
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->getMimeType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const-string v6, "android.intent.extra.STREAM"

    .line 1022
    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getContentUri(Lcom/pantech/app/vegacamera/bridge/data/Path;)Landroid/net/Uri;

    move-result-object v7

    .line 1021
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1024
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$3(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->setOrientation(I)V

    .line 1025
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    .line 1026
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->transfer:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1025
    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1028
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1029
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v6, "PhotoPage"

    const-string v7, "[PhotoPage] Fail to get ContentUri"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUndoButtonSelect()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    .line 1054
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mModel:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$2(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$2;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$1(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->setListener(Lcom/pantech/app/vegacamera/ui/PhotoPageLayout$Listener;)V

    .line 1057
    :cond_0
    return-void
.end method
