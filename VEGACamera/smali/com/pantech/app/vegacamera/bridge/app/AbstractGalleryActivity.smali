.class public Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/app/GalleryActivity;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisableToggleStatusBar:Z

.field private mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field protected mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

.field private mStateManager:Lcom/pantech/app/vegacamera/bridge/app/StateManager;

.field private mTransitionStore:Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

.field private photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mTransitionStore:Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 57
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$1;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    .line 46
    return-void
.end method

.method private static clearBitmapPool(Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;)V
    .locals 0
    .parameter "pool"

    .prologue
    .line 238
    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->clear()V

    .line 240
    :cond_0
    return-void
.end method

.method private toggleStatusBarByOrientation()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 307
    const-string v1, "AbstractGalleryActivity"

    const-string v2, "[AbstractGalleryActivity] toggleStatusBarByOrientation()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 312
    .local v0, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 313
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method protected disableToggleStatusBar()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    .line 303
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 111
    return-object p0
.end method

.method public getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraAppImpl;->GetInstance()Lcom/pantech/app/vegacamera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraAppImpl;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    return-object v0
.end method

.method public getOrientationManager()Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    return-object v0
.end method

.method public getPhotoPageLayout()Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] getStateManager()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mStateManager:Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mStateManager:Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mStateManager:Lcom/pantech/app/vegacamera/bridge/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraAppImpl;->GetInstance()Lcom/pantech/app/vegacamera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraAppImpl;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionStore()Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mTransitionStore:Lcom/pantech/app/vegacamera/bridge/app/TransitionStore;

    return-object v0
.end method

.method protected isFullscreen()Z
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 258
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] onActivityResult()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->lockRenderThread()V

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 265
    return-void

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 264
    throw v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 269
    const-string v1, "AbstractGalleryActivity"

    const-string v2, "[AbstractGalleryActivity] onBackPressed()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    .line 272
    .local v0, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->lockRenderThread()V

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 278
    return-void

    .line 275
    :catchall_0
    move-exception v1

    .line 276
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 277
    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 91
    const-string v1, "AbstractGalleryActivity"

    const-string v2, "[AbstractGalleryActivity] onConfigurationChanged()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mStateManager:Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 100
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "AbstractGalleryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChanged : config"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const-string v0, "AbstractGalleryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AbstractGalleryActivity] onCreate() :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    .line 71
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->lockRenderThread()V

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 254
    :cond_1
    return-void

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 253
    :cond_2
    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 291
    const-string v1, "AbstractGalleryActivity"

    const-string v2, "[AbstractGalleryActivity] onOptionsItemSelected()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    .line 293
    .local v0, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->lockRenderThread()V

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 297
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 295
    return v1

    .line 296
    :catchall_0
    move-exception v1

    .line 297
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 298
    throw v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->pause()V

    .line 221
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->onPause()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->lockRenderThread()V

    .line 226
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->pause()V

    .line 227
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 232
    :cond_2
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getMicroThumbPool()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;)V

    .line 233
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getThumbPool()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;)V

    .line 234
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getBytesBufferPool()Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;->clear()V

    .line 235
    return-void

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 231
    :cond_3
    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] onResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->lockRenderThread()V

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->resume()V

    .line 206
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->onResume()V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->resume()V

    .line 214
    return-void

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 210
    :cond_3
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->lockRenderThread()V

    .line 80
    :cond_0
    :try_start_0
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 87
    :cond_1
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unlockRenderThread()V

    .line 86
    :cond_2
    throw v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 165
    const-string v2, "AbstractGalleryActivity"

    const-string v3, "[AbstractGalleryActivity] onStart()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 167
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 168
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$2;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V

    .line 174
    .local v0, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity$3;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V

    .line 180
    .local v1, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No Storage"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 181
    const-string v3, "No external storage available."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 180
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 183
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    .end local v0           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 196
    :cond_0
    return-void
.end method

.method protected onStorageReady()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] onStorageReady()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 144
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "[AbstractGalleryActivity] setContentView()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 146
    sget v0, Lcom/pantech/app/vegacamera/R$id;->gl_root_view:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    .line 148
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->photopage:I

    .line 149
    sget v0, Lcom/pantech/app/vegacamera/R$id;->photopage_layout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->photoPageLayout:Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/PhotoPageLayout;->LayoutInflate()V

    .line 152
    return-void
.end method
