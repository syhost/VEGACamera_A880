.class public Lcom/pantech/app/vegacamera/bridge/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final KEY_CACHE_UP_TO_DATE:Ljava/lang/String; = "cache-up-to-date"

.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/vegacamera/bridge/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sOldCheckDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .locals 10
    .parameter "context"
    .parameter "filename"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "version"

    .prologue
    .line 40
    sget-object v9, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 41
    :try_start_0
    sget-boolean v2, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sOldCheckDone:Z

    if-nez v2, :cond_0

    .line 42
    invoke-static {p0}, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    .line 43
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sOldCheckDone:Z

    .line 45
    :cond_0
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    .line 46
    .local v6, cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    if-nez v6, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    .line 48
    .local v7, cacheDir:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 50
    .local v1, path:Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .end local v6           #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .local v0, cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    :try_start_2
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    :goto_0
    :try_start_3
    monitor-exit v9

    return-object v0

    .line 52
    .end local v0           #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .restart local v7       #cacheDir:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v0, v6

    .line 53
    .end local v6           #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .restart local v0       #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .local v8, e:Ljava/io/IOException;
    :goto_1
    const-string v2, "CacheManager"

    const-string v3, "Cannot instantiate cache!"

    invoke-static {v2, v3, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    .end local v0           #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 52
    .restart local v0       #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v7       #cacheDir:Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0           #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    .restart local v6       #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    :cond_1
    move-object v0, v6

    .end local v6           #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    .restart local v0       #cache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;
    goto :goto_0
.end method

.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 63
    .local v2, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 65
    .local v1, n:I
    :try_start_0
    const-string v4, "cache-up-to-date"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    :goto_1
    return-void

    .line 71
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "cache-up-to-date"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, cacheDir:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, prefix:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "imgcache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "rev_geocoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v3           #prefix:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
