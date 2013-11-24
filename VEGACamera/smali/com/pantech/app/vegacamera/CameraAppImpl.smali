.class public Lcom/pantech/app/vegacamera/CameraAppImpl;
.super Ljava/lang/Object;
.source "CameraAppImpl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/CameraApp;


# static fields
.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field private static final TAG:Ljava/lang/String; = "CameraAppImpl"

.field private static mActivity:Landroid/app/Activity;

.field private static volatile mCameraAppImpl:Lcom/pantech/app/vegacamera/CameraAppImpl;


# instance fields
.field private mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

.field private mDownloadCache:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

.field private mImageCacheService:Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;

.field private mLock:Ljava/lang/Object;

.field private mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public static GetInstance()Lcom/pantech/app/vegacamera/CameraAppImpl;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mCameraAppImpl:Lcom/pantech/app/vegacamera/CameraAppImpl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-class v1, Lcom/pantech/app/vegacamera/CameraAppImpl;

    monitor-enter v1

    .line 52
    :try_start_0
    new-instance v0, Lcom/pantech/app/vegacamera/CameraAppImpl;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/CameraAppImpl;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mCameraAppImpl:Lcom/pantech/app/vegacamera/CameraAppImpl;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mCameraAppImpl:Lcom/pantech/app/vegacamera/CameraAppImpl;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->initializeSourceMap()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    return-object v0
.end method

.method public getDownloadCache()Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDownloadCache:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    if-nez v1, :cond_2

    .line 103
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pantech/app/vegacamera/CameraAppImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to create: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDownloadCache:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    .line 113
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDownloadCache:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    return-object v1
.end method

.method public getImageCacheService()Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mImageCacheService:Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mImageCacheService:Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mImageCacheService:Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "CameraAppImpl"

    const-string v1, "[Camera APP] onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const-string v0, "CameraAppImpl"

    const-string v1, "[Camera APP] onTerminate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    .line 74
    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mImageCacheService:Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;

    .line 75
    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mDownloadCache:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    .line 76
    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraAppImpl;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    .line 77
    sput-object v2, Lcom/pantech/app/vegacamera/CameraAppImpl;->mCameraAppImpl:Lcom/pantech/app/vegacamera/CameraAppImpl;

    .line 78
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 63
    sput-object p1, Lcom/pantech/app/vegacamera/CameraAppImpl;->mActivity:Landroid/app/Activity;

    .line 64
    return-void
.end method
