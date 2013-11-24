.class public Lcom/pantech/app/vegacamera/util/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/util/Storage$Listener;
    }
.end annotation


# static fields
.field private static CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field private static final CANNOT_STAT_ERROR:J = -0x2L

.field public static final CURRENT_SAVE_DIRECTORY:Z = true

.field public static final DEFAULT_EXTERNAL_DIR:Ljava/lang/String; = null

.field public static final DEFAULT_INTERNAL_DIR:Ljava/lang/String; = null

.field public static final EXTERNAL_DIR:Ljava/lang/String; = "/storage1"

.field public static final INTERNAL_DIR:Ljava/lang/String; = "/storage0"

.field public static final LOCATION_EXT:Ljava/lang/String; = null

.field public static final LOCATION_INT:Ljava/lang/String; = null

.field public static final LOW_STORAGE_THRESHOLD:J = 0x1e00000L

.field private static final NO_STORAGE_ERROR:J = -0x1L

.field public static final OPPOSITE_SAVE_DIRECTORY:Z = false

.field private static Pref_Location:Ljava/lang/String; = null

.field public static final STORAGE_STATUS_FAIL:I = 0x3

.field public static final STORAGE_STATUS_LOW:I = 0x1

.field public static final STORAGE_STATUS_NONE:I = 0x2

.field public static final STORAGE_STATUS_OK:I = 0x0

.field public static final STORAGE_STATUS_SHARED:I = 0x4

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Storage"

.field static mListener:Lcom/pantech/app/vegacamera/util/Storage$Listener;

.field private static stat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_INT:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_EXT:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    .line 58
    sput-object v2, Lcom/pantech/app/vegacamera/util/Storage;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 59
    sput-object v2, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    .line 61
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/pantech/app/vegacamera/util/Storage;->STORAGE_URI:Landroid/net/Uri;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ChangeOtherLocation(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V
    .locals 4
    .parameter "con"
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatus(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "temp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CURRENT_SAVE_DIRECTORY status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatus(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "directory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 114
    :goto_1
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Storage;->ShowToastChangedStorageLocation(Landroid/content/Context;)V

    .line 116
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->mListener:Lcom/pantech/app/vegacamera/util/Storage$Listener;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->mListener:Lcom/pantech/app/vegacamera/util/Storage$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/util/Storage$Listener;->StorageChanged()V

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static CheckFsWritable(Z)Z
    .locals 5
    .parameter "isCurrentDirectory"

    .prologue
    .line 347
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->CreateCameraFolders()V

    .line 350
    if-eqz p0, :cond_0

    .line 351
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, directoryName:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    const/4 v2, 0x0

    .line 369
    :goto_1
    return v2

    .line 353
    .end local v0           #directory:Ljava/io/File;
    .end local v1           #directoryName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    sget-object v1, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_INT:Ljava/lang/String;

    .line 355
    .restart local v1       #directoryName:Ljava/lang/String;
    goto :goto_0

    .line 356
    .end local v1           #directoryName:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_EXT:Ljava/lang/String;

    .restart local v1       #directoryName:Ljava/lang/String;
    goto :goto_0

    .line 365
    .restart local v0       #directory:Ljava/io/File;
    :cond_2
    const-string v2, "Storage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkFsWritable() make dir : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_1
.end method

.method private static CheckOldLocationPref(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 74
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static CreateCameraFolders()V
    .locals 4

    .prologue
    .line 334
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_INT:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, Default_InternalDirectory:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_EXT:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/DCIM/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, Default_ExternalDirectory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 344
    :cond_1
    return-void
.end method

.method public static Get2ndExternalStorageDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, StorageDirectory:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "Storage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NoSuchMethodError "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Get2ndExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, StorageDirectory:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public static GetAvailableStorage(Z)J
    .locals 7
    .parameter "isCurrentDirectory"

    .prologue
    .line 211
    :try_start_0
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Storage;->HasStorage(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const-wide/16 v3, -0x1

    .line 233
    :goto_0
    return-wide v3

    .line 214
    :cond_0
    const/4 v2, 0x0

    .line 216
    .local v2, storageDirectory:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 217
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 226
    :goto_1
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    goto :goto_0

    .line 219
    .end local v1           #stat:Landroid/os/StatFs;
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_INTERNAL_DIR:Ljava/lang/String;

    .line 221
    goto :goto_1

    .line 222
    :cond_2
    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->DEFAULT_EXTERNAL_DIR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    .end local v2           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Storage"

    const-string v4, "Fail to access sdcard"

    invoke-static {v3, v4, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    const-wide/16 v3, -0x2

    goto :goto_0
.end method

.method private static GetOppositeStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, state:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 289
    .restart local v1       #state:Ljava/lang/String;
    :cond_1
    const-string v2, "unmounted"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .local v2, state2nd:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 293
    const-string v3, "Storage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] getStorageState : state2nd : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_1
    :try_start_2
    const-string v3, "Storage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getStorageState :: state = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state2nd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 304
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "Storage"

    const-string v4, "[Camera] getStorageState : fail"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 310
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .end local v2           #state2nd:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 311
    .restart local v0       #e:Ljava/lang/NoSuchMethodError;
    const-string v3, "Storage"

    const-string v4, "getStorageState :: NoSuchMethodError"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .restart local v2       #state2nd:Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 307
    goto :goto_0
.end method

.method private static GetStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 249
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, state:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 255
    .restart local v1       #state:Ljava/lang/String;
    :cond_1
    const-string v2, "unmounted"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    .local v2, state2nd:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v3, "Storage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] getStorageState : state2nd : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :goto_1
    :try_start_2
    const-string v3, "Storage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getStorageState :: state = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state2nd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 270
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "Storage"

    const-string v4, "[Camera] getStorageState : fail"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 276
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .end local v2           #state2nd:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 277
    .restart local v0       #e:Ljava/lang/NoSuchMethodError;
    const-string v3, "Storage"

    const-string v4, "getStorageState :: NoSuchMethodError"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .restart local v2       #state2nd:Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 273
    goto :goto_0
.end method

.method private static GetStorageStatus(Z)I
    .locals 8
    .parameter "isCurrentDirectory"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 157
    if-eqz p0, :cond_1

    .line 158
    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Storage;->GetAvailableStorage(Z)J

    move-result-wide v1

    .line 163
    .local v1, remaining:J
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-nez v6, :cond_6

    .line 165
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    if-eqz p0, :cond_2

    .line 168
    :try_start_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 189
    .local v3, state:Ljava/lang/String;
    :goto_1
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 190
    const/4 v4, 0x4

    .line 198
    .end local v3           #state:Ljava/lang/String;
    :cond_0
    :goto_2
    return v4

    .line 160
    .end local v1           #remaining:J
    :cond_1
    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Storage;->GetAvailableStorage(Z)J

    move-result-wide v1

    .restart local v1       #remaining:J
    goto :goto_0

    .line 170
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3       #state:Ljava/lang/String;
    goto :goto_1

    .line 172
    .end local v3           #state:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v4, "Storage"

    const-string v5, "No Such Method Error Get2ndExternalStorageState"

    invoke-static {v4, v5, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    const-string v3, "unmounted"

    .line 176
    .restart local v3       #state:Ljava/lang/String;
    goto :goto_1

    .line 178
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .end local v3           #state:Ljava/lang/String;
    :cond_3
    if-eqz p0, :cond_4

    .line 179
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3       #state:Ljava/lang/String;
    goto :goto_1

    .line 181
    .end local v3           #state:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->Get2ndExternalStorageState()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .restart local v3       #state:Ljava/lang/String;
    goto :goto_1

    .line 183
    .end local v3           #state:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/lang/NoSuchMethodError;
    const-string v4, "Storage"

    const-string v5, "NoSuchMethodError getExternalStorageState"

    invoke-static {v4, v5, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const-string v3, "unmounted"

    .restart local v3       #state:Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :cond_5
    const/4 v4, 0x2

    goto :goto_2

    .line 195
    .end local v3           #state:Ljava/lang/String;
    :cond_6
    const-wide/16 v6, -0x2

    cmp-long v6, v1, v6

    if-nez v6, :cond_7

    .line 196
    const/4 v4, 0x3

    goto :goto_2

    .line 198
    :cond_7
    const-wide/32 v6, 0x1e00000

    cmp-long v6, v1, v6

    if-ltz v6, :cond_0

    move v4, v5

    goto :goto_2
.end method

.method public static GetStorageStatusANDChLoc(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I
    .locals 4
    .parameter "con"
    .parameter "pref"

    .prologue
    const/4 v3, 0x1

    .line 140
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Storage;->CheckOldLocationPref(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V

    .line 142
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatus(Z)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/util/Storage;->stat:I

    .line 144
    sget v0, Lcom/pantech/app/vegacamera/util/Storage;->stat:I

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0, p1}, Lcom/pantech/app/vegacamera/util/Storage;->ChangeOtherLocation(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V

    .line 146
    const-string v0, "Storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStorageStatus_and_ChLoc()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatus(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatus(Z)I

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    const-string v0, "Storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStorageStatus_and_ChLoc()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/pantech/app/vegacamera/util/Storage;->stat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget v0, Lcom/pantech/app/vegacamera/util/Storage;->stat:I

    goto :goto_0
.end method

.method private static HasStorage(Z)Z
    .locals 4
    .parameter "isCurrentDirectory"

    .prologue
    .line 239
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Storage;->HasStorageInner(Z)Z

    move-result v0

    .line 240
    .local v0, hasStg:Z
    const-string v1, "Storage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasStorage : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-eqz v0, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 244
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static HasStorageInner(Z)Z
    .locals 4
    .parameter "isCurrentDirectory"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, state:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 319
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageState()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    const-string v2, "Storage"

    const-string v3, "hasStorageInner():MEDIA_MOUNTED"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Storage;->CheckFsWritable(Z)Z

    move-result v1

    .line 329
    :goto_1
    return v1

    .line 321
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->GetOppositeStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static Is2ndExternalSaveLocation(Ljava/lang/String;)Z
    .locals 1
    .parameter "savelocation"

    .prologue
    .line 202
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->LOCATION_EXT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ShowToastChangedStorageLocation(Landroid/content/Context;)V
    .locals 3
    .parameter "con"

    .prologue
    const/4 v2, 0x1

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, toast:Landroid/widget/Toast;
    sget v1, Lcom/pantech/app/vegacamera/util/Storage;->stat:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget v1, Lcom/pantech/app/vegacamera/R$string;->storageLowMemoryInt_changedStorage:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    :cond_0
    return-void

    .line 89
    :cond_1
    sget v1, Lcom/pantech/app/vegacamera/util/Storage;->stat:I

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    sget v1, Lcom/pantech/app/vegacamera/R$string;->storageLowMemorySD_changedStorage:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    sget v1, Lcom/pantech/app/vegacamera/R$string;->storageUnavailable_changedStorage:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[III)Landroid/net/Uri;
    .locals 15
    .parameter "cr"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpeg"
    .parameter "degree"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 717
    const/4 v7, 0x0

    .line 718
    .local v7, outputStream:Ljava/io/FileOutputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    .local v6, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 722
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 724
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .local v5, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 726
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .local v8, outputStream:Ljava/io/FileOutputStream;
    if-eqz p7, :cond_3

    .line 727
    :try_start_1
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 728
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p9, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 740
    :goto_0
    invoke-static {v8}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 742
    if-eqz v8, :cond_1

    .line 743
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    .line 753
    :cond_1
    :goto_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 755
    .local v9, size:J
    new-instance v11, Landroid/content/ContentValues;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 756
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v12, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v12, "datetaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    const-string v12, "date_modified"

    const-wide/16 v13, 0x3e8

    div-long v13, p2, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string v12, "mime_type"

    const-string v13, "image/jpeg"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v12, "orientation"

    const/4 v13, 0x0

    aget v13, p9, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v12, "_data"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v12, "_size"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 768
    const-string v12, "width"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string v12, "height"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    if-eqz p4, :cond_2

    .line 772
    const-string v12, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 773
    const-string v12, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 776
    :cond_2
    sget-object v12, Lcom/pantech/app/vegacamera/util/Storage;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object v7, v8

    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .end local v9           #size:J
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :goto_2
    return-object v12

    .line 730
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 731
    const/4 v12, 0x0

    invoke-static {v6}, Lcom/pantech/app/vegacamera/util/Storage;->getExifOrientation(Ljava/lang/String;)I

    move-result v13

    aput v13, p9, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    goto/16 :goto_0

    .line 733
    :catch_0
    move-exception v4

    move-object v7, v8

    .line 734
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string v12, "Storage"

    invoke-static {v12, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 740
    invoke-static {v7}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 742
    if-eqz v7, :cond_4

    .line 743
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 735
    :cond_4
    :goto_4
    const/4 v12, 0x0

    goto :goto_2

    .line 745
    :catch_1
    move-exception v3

    .line 746
    .local v3, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_2

    .line 736
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 737
    .local v4, ex:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v12, "Storage"

    invoke-static {v12, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 740
    invoke-static {v7}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 742
    if-eqz v7, :cond_5

    .line 743
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 738
    :cond_5
    :goto_6
    const/4 v12, 0x0

    goto :goto_2

    .line 745
    :catch_3
    move-exception v3

    .line 746
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_2

    .line 739
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 740
    :goto_7
    invoke-static {v7}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 742
    if-eqz v7, :cond_6

    .line 743
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 750
    :cond_6
    :goto_8
    throw v12

    .line 745
    :catch_4
    move-exception v3

    .line 746
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_2

    .line 745
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    .line 746
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 747
    .end local v2           #dir:Ljava/io/File;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .local v4, ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v12

    goto :goto_4

    .local v4, ex:Ljava/io/IOException;
    :catch_7
    move-exception v12

    goto :goto_6

    .end local v4           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v13

    goto :goto_8

    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v12

    goto/16 :goto_1

    .line 739
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 736
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 733
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    :catch_b
    move-exception v4

    goto :goto_3
.end method

.method public static addImage2(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[III)Z
    .locals 15
    .parameter "con"
    .parameter "cr"
    .parameter "title"
    .parameter "date"
    .parameter "loc"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpeg"
    .parameter "degree"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 662
    const/4 v9, 0x0

    .line 663
    .local v9, outputStream:Ljava/io/FileOutputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 665
    .local v6, filePath:Ljava/lang/String;
    const/4 v8, 0x1

    .line 668
    .local v8, nResult:Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 670
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 672
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v5, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 674
    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .local v10, outputStream:Ljava/io/FileOutputStream;
    if-eqz p8, :cond_4

    .line 675
    :try_start_1
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x4b

    move-object/from16 v0, p8

    invoke-virtual {v0, v11, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 686
    :goto_0
    invoke-static {v10}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 688
    if-eqz v10, :cond_6

    .line 689
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-object v9, v10

    .line 698
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    const/4 v11, 0x2

    new-array v7, v11, [D

    .line 699
    .local v7, location:[D
    if-eqz p5, :cond_2

    .line 700
    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    aput-wide v12, v7, v11

    .line 701
    const/4 v11, 0x1

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    aput-wide v12, v7, v11

    .line 704
    :cond_2
    const/4 v11, 0x0

    aget-wide v11, v7, v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_3

    .line 705
    const/4 v7, 0x0

    .line 708
    :cond_3
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/Storage;->setExifInfo(Ljava/lang/String;[D)V

    move v11, v8

    .line 710
    .end local v7           #location:[D
    :goto_2
    return v11

    .line 677
    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_3
    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_0

    .line 679
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 680
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string v11, "Storage"

    invoke-static {v11, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    const/4 v8, 0x0

    .line 686
    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 688
    if-eqz v9, :cond_1

    .line 689
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_1

    .line 691
    :catch_1
    move-exception v3

    .line 692
    .local v3, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_2

    .line 682
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 683
    .local v4, ex:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v11, "Storage"

    invoke-static {v11, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 684
    const/4 v8, 0x0

    .line 686
    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 688
    if-eqz v9, :cond_1

    .line 689
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_1

    .line 691
    :catch_3
    move-exception v3

    .line 692
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_2

    .line 685
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 686
    :goto_5
    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 688
    if-eqz v9, :cond_5

    .line 689
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    .line 696
    :cond_5
    :goto_6
    throw v11

    .line 691
    :catch_4
    move-exception v3

    .line 692
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_2

    .line 691
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    .line 692
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v11, 0x0

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 693
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v11

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .local v4, ex:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v11

    goto :goto_1

    .local v4, ex:Ljava/io/IOException;
    :catch_8
    move-exception v11

    goto :goto_1

    .end local v4           #ex:Ljava/io/IOException;
    :catch_9
    move-exception v12

    goto :goto_6

    .line 685
    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 682
    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 679
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    :catch_b
    move-exception v4

    goto :goto_3

    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :cond_6
    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static addPanoramaImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[III)Landroid/net/Uri;
    .locals 15
    .parameter "cr"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpeg"
    .parameter "degree"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 783
    const/4 v7, 0x0

    .line 784
    .local v7, outputStream:Ljava/io/FileOutputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 786
    .local v6, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 788
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 789
    const-string v12, "Storage"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "addImage1() make dir : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .local v5, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 793
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .local v8, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 801
    invoke-static {v8}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 803
    if-eqz v8, :cond_1

    .line 804
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    .line 814
    :cond_1
    :goto_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 816
    .local v9, size:J
    new-instance v11, Landroid/content/ContentValues;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 817
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v12, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v12, "datetaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    const-string v12, "date_modified"

    const-wide/16 v13, 0x3e8

    div-long v13, p2, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    const-string v12, "mime_type"

    const-string v13, "image/jpeg"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v12, "orientation"

    const/4 v13, 0x0

    aget v13, p9, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v12, "_data"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v12, "_size"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    const-string v12, "width"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v12, "height"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    if-eqz p4, :cond_2

    .line 833
    const-string v12, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 834
    const-string v12, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 837
    :cond_2
    sget-object v12, Lcom/pantech/app/vegacamera/util/Storage;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object v7, v8

    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .end local v9           #size:J
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return-object v12

    .line 794
    :catch_0
    move-exception v4

    .line 795
    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v12, "Storage"

    invoke-static {v12, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 801
    invoke-static {v7}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 803
    if-eqz v7, :cond_3

    .line 804
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 796
    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto :goto_1

    .line 806
    :catch_1
    move-exception v3

    .line 807
    .local v3, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 797
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 798
    .local v4, ex:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v12, "Storage"

    invoke-static {v12, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 801
    invoke-static {v7}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 803
    if-eqz v7, :cond_4

    .line 804
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 799
    :cond_4
    :goto_5
    const/4 v12, 0x0

    goto :goto_1

    .line 806
    :catch_3
    move-exception v3

    .line 807
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 800
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 801
    :goto_6
    invoke-static {v7}, Lcom/pantech/app/vegacamera/util/Storage;->sync(Ljava/io/FileOutputStream;)Z

    .line 803
    if-eqz v7, :cond_5

    .line 804
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 811
    :cond_5
    :goto_7
    throw v12

    .line 806
    :catch_4
    move-exception v3

    .line 807
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 806
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    .line 807
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 808
    .end local v2           #dir:Ljava/io/File;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .local v4, ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v12

    goto :goto_3

    .local v4, ex:Ljava/io/IOException;
    :catch_7
    move-exception v12

    goto :goto_5

    .end local v4           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v13

    goto :goto_7

    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v12

    goto/16 :goto_0

    .line 800
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 797
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 794
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static addTempImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 8
    .parameter "mContentResolver"
    .parameter "title"
    .parameter "directory"
    .parameter "filename"
    .parameter "data"
    .parameter "mImageWidth"
    .parameter "mImageHeight"

    .prologue
    .line 480
    const/4 v4, 0x0

    .line 482
    .local v4, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 486
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 488
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .local v5, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 495
    if-eqz v5, :cond_3

    .line 496
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-object v4, v5

    .line 504
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "Storage"

    invoke-static {v6, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    if-eqz v4, :cond_1

    .line 496
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 498
    :catch_1
    move-exception v6

    goto :goto_0

    .line 491
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 492
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "Storage"

    invoke-static {v6, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 495
    if-eqz v4, :cond_1

    .line 496
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_0

    .line 498
    :catch_3
    move-exception v6

    goto :goto_0

    .line 493
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 495
    :goto_3
    if-eqz v4, :cond_2

    .line 496
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9

    .line 503
    :cond_2
    :goto_4
    throw v6

    .line 498
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 500
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    goto :goto_0

    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .restart local v1       #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    goto :goto_0

    .line 498
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    goto :goto_4

    .line 500
    :catch_9
    move-exception v7

    goto :goto_4

    .line 493
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 491
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 489
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 463
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, th:Ljava/lang/Throwable;
    const-string v1, "Storage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "title"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraImageBucketName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 507
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/pantech/app/vegacamera/util/Storage;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 508
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, path:Ljava/lang/String;
    const-string v2, "/storage0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    const-string v3, "/storage0"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/pantech/app/vegacamera/util/Storage;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 516
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    return-object v2
.end method

.method private static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, degree:I
    const/4 v2, 0x0

    .line 575
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 579
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 580
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 581
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 583
    packed-switch v4, :pswitch_data_0

    .line 596
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Storage"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 585
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 586
    goto :goto_1

    .line 588
    :pswitch_2
    const/16 v0, 0xb4

    .line 589
    goto :goto_1

    .line 591
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getLocationPref()Ljava/lang/String;
    .locals 3

    .prologue
    .line 530
    const-string v0, "Storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set storage location pref is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    return-object v0
.end method

.method public static getStorageDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 520
    const-string v0, "Storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storage directory is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    return-object v0
.end method

.method private static latlocConvert(D)Ljava/lang/String;
    .locals 7
    .parameter "coordinate"

    .prologue
    const-wide/high16 v5, 0x404e

    .line 547
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p0, v3

    if-ltz v3, :cond_0

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p0, v3

    if-gtz v3, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "coordinate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 550
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v2, sb:Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_2

    .line 553
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    neg-double p0, p0

    .line 556
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 557
    .local v0, degrees:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    const-string v3, "/1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    int-to-double v3, v0

    sub-double/2addr p0, v3

    .line 560
    mul-double/2addr p0, v5

    .line 561
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 562
    .local v1, minutes:I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    const-string v3, "/1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    int-to-double v3, v1

    sub-double/2addr p0, v3

    .line 565
    mul-double/2addr p0, v5

    .line 566
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 567
    const-string v3, "/1000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;
    .locals 7
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 373
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, path:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 377
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {v3, p4, p5}, Lcom/pantech/app/vegacamera/util/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 394
    :goto_0
    return-object v2

    .line 385
    :catch_0
    move-exception v1

    .line 391
    .local v1, th:Ljava/lang/Throwable;
    const-string v4, "Storage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to new image"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setExifInfo(Ljava/lang/String;[D)V
    .locals 19
    .parameter "filepath"
    .parameter "location"

    .prologue
    .line 600
    const/4 v5, 0x0

    .line 601
    .local v5, exif:Landroid/media/ExifInterface;
    const/16 v16, 0x0

    .line 604
    .local v16, updated:Z
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .end local v5           #exif:Landroid/media/ExifInterface;
    .local v6, exif:Landroid/media/ExifInterface;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v2

    .line 611
    .local v2, dateTaken:J
    const-string v17, "yyyy:MM:dd hh:mm:ss"

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 613
    .local v15, strDate:Ljava/lang/String;
    const-string v17, "DateTime"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_0

    .line 614
    const-string v17, "DateTime"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/16 v16, 0x1

    .line 617
    :cond_0
    const-string v17, "Make"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1

    .line 618
    const-string v17, "Make"

    sget-object v18, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/16 v16, 0x1

    .line 621
    :cond_1
    const-string v17, "Model"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    .line 622
    const-string v17, "Model"

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/16 v16, 0x1

    .line 626
    :cond_2
    if-eqz v16, :cond_5

    if-eqz p1, :cond_5

    .line 627
    const/16 v17, 0x0

    aget-wide v8, p1, v17

    .line 628
    .local v8, lattitude:D
    const/16 v17, 0x1

    aget-wide v11, p1, v17

    .line 630
    .local v11, longitude:D
    const-string v7, "N"

    .line 631
    .local v7, latRef:Ljava/lang/String;
    const-string v10, "E"

    .line 633
    .local v10, lonRef:Ljava/lang/String;
    const-wide/16 v17, 0x0

    cmpg-double v17, v8, v17

    if-gez v17, :cond_3

    .line 634
    const-string v7, "S"

    .line 636
    :cond_3
    const-wide/16 v17, 0x0

    cmpg-double v17, v11, v17

    if-gez v17, :cond_4

    .line 637
    const-string v10, "W"

    .line 640
    :cond_4
    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/Storage;->latlocConvert(D)Ljava/lang/String;

    move-result-object v13

    .line 641
    .local v13, sLat:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/Storage;->latlocConvert(D)Ljava/lang/String;

    move-result-object v14

    .line 643
    .local v14, sLon:Ljava/lang/String;
    const-string v17, "GPSLatitudeRef"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v17, "GPSLatitude"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v17, "GPSLongitudeRef"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v17, "GPSLongitude"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/16 v16, 0x1

    .line 650
    .end local v7           #latRef:Ljava/lang/String;
    .end local v8           #lattitude:D
    .end local v10           #lonRef:Ljava/lang/String;
    .end local v11           #longitude:D
    .end local v13           #sLat:Ljava/lang/String;
    .end local v14           #sLon:Ljava/lang/String;
    :cond_5
    if-eqz v16, :cond_6

    .line 652
    :try_start_1
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_0
    move-object v5, v6

    .line 657
    .end local v2           #dateTaken:J
    .end local v6           #exif:Landroid/media/ExifInterface;
    .end local v15           #strDate:Ljava/lang/String;
    .restart local v5       #exif:Landroid/media/ExifInterface;
    :goto_1
    return-void

    .line 605
    :catch_0
    move-exception v4

    .line 606
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 653
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #exif:Landroid/media/ExifInterface;
    .restart local v2       #dateTaken:J
    .restart local v6       #exif:Landroid/media/ExifInterface;
    .restart local v15       #strDate:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 654
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 472
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    :cond_0
    return-void
.end method

.method public static setLocationPref(Ljava/lang/String;)V
    .locals 3
    .parameter "storageLocation"

    .prologue
    .line 525
    sput-object p0, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    .line 526
    const-string v0, "Storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set storage location pref is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pantech/app/vegacamera/util/Storage;->Pref_Location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .parameter "stream"

    .prologue
    .line 537
    if-eqz p0, :cond_0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    .line 541
    :catch_0
    move-exception v0

    .line 543
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z
    .locals 12
    .parameter "resolver"
    .parameter "uri"
    .parameter "title"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 405
    const-string v9, "Storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Jpeg File Size  = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v9, "Storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "title  = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v9, "Storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "uri  = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p2}, Lcom/pantech/app/vegacamera/util/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, path:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, tmpPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 415
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 417
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 418
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 419
    const-string v9, "Storage"

    const-string v10, "write image"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 425
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 429
    :goto_0
    const-string v9, "Storage"

    const-string v10, "write image"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 432
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v9, "_display_name"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v9, "orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v9, "_size"

    move-object/from16 v0, p5

    array-length v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v8, v0, v1}, Lcom/pantech/app/vegacamera/util/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 441
    if-eqz p3, :cond_0

    .line 442
    const-string v9, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 443
    const-string v9, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 447
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    const-string v9, "Storage"

    const-string v10, "write image db update"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 454
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_1
    return v9

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v9, "Storage"

    const-string v10, "Failed to write image"

    invoke-static {v9, v10, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 425
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 422
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 423
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 425
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 428
    :goto_5
    throw v9

    .line 449
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    .line 450
    .local v6, th:Ljava/lang/Throwable;
    const-string v9, "Storage"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to update image"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v9, 0x0

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 426
    .end local v6           #th:Ljava/lang/Throwable;
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_5

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    goto/16 :goto_0

    .line 423
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 420
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public SetListener(Lcom/pantech/app/vegacamera/util/Storage$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    sput-object p1, Lcom/pantech/app/vegacamera/util/Storage;->mListener:Lcom/pantech/app/vegacamera/util/Storage$Listener;

    .line 71
    return-void
.end method
