.class public Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;
.super Ljava/lang/Object;
.source "RemoteShotUtil.java"


# static fields
.field private static bIsGroupOwner:Z

.field private static iRemoconPort:I

.field private static sRemoconIpAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->bIsGroupOwner:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "absolutepath"

    .prologue
    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, fileWithFileName:Ljava/io/File;
    invoke-static {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->storageTypeOfFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->isExternalStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, fileWithoutFileName:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 201
    .end local v1           #fileWithoutFileName:Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 186
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->is2ndExternalStorage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v1       #fileWithoutFileName:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 192
    .end local v1           #fileWithoutFileName:Ljava/io/File;
    :cond_2
    invoke-static {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->replaceExternal_sdToSdcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, replacedAbsolutePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #fileWithFileName:Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v0       #fileWithFileName:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v1       #fileWithoutFileName:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static copyAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fromAbsolutePath"
    .parameter "toAbsolutePath"

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractFileNameFromAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "absolutepath"

    .prologue
    .line 327
    if-eqz p0, :cond_0

    .line 330
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGroupOwner()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->bIsGroupOwner:Z

    return v0
.end method

.method public static getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 306
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getNotGroupOwnerIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->sRemoconIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getNotGroupOwnerPort()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->iRemoconPort:I

    return v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 317
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static is2ndExternalStorage()Z
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, storageState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnoughExternalStorageFreeSpace(JLjava/lang/String;)Z
    .locals 12
    .parameter "filesize"
    .parameter "sizeunit"

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, storagePath:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 114
    .local v4, statFs:Landroid/os/StatFs;
    const-wide/16 v2, 0x1

    .line 117
    .local v2, divideUnit:J
    const-string v8, "byte"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 118
    const-wide/16 v2, 0x1

    .line 125
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    .line 126
    long-to-double v10, v2

    .line 125
    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 127
    .local v0, currentStorageFreeSpace:J
    sub-long/2addr v0, p0

    .line 128
    const-wide v8, 0x41bf400000000000L

    long-to-double v10, v2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 129
    .local v5, storageFreeSpaceLimit:J
    const-string v8, "RemoteShot"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Util] currentStorageFreeSpace : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v8, "RemoteShot"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Util] storageFreeSpaceLimit : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    cmp-long v8, v0, v5

    if-lez v8, :cond_3

    .line 132
    const/4 v8, 0x1

    .line 134
    :goto_1
    return v8

    .line 119
    .end local v0           #currentStorageFreeSpace:J
    .end local v5           #storageFreeSpaceLimit:J
    :cond_1
    const-string v8, "MiB"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 120
    const-wide/32 v2, 0x100000

    .line 121
    goto :goto_0

    :cond_2
    const-string v8, "GiB"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    const-wide/32 v2, 0x40000000

    goto :goto_0

    .line 134
    .restart local v0       #currentStorageFreeSpace:J
    .restart local v5       #storageFreeSpaceLimit:J
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static isExternalStorage()Z
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, storageState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 282
    const-string v2, "Pref_State"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Util] State : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Pref_State"

    invoke-static {p0, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    return-void
.end method

.method public static putSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "string"

    .prologue
    .line 299
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 300
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method

.method public static replaceExternal_sdToSdcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "absolutepath"

    .prologue
    .line 71
    move-object v0, p0

    .line 74
    .local v0, originalAbsolutePath:Ljava/lang/String;
    const-string v2, "external_sd"

    const-string v3, "sdcard"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, replacedAbsolutePath:Ljava/lang/String;
    return-object v1
.end method

.method public static setGroupOwner(Z)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 45
    sput-boolean p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->bIsGroupOwner:Z

    .line 46
    return-void
.end method

.method public static setNotGroupOwnerIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 22
    sput-object p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->sRemoconIpAddress:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static setNotGroupOwnerPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 30
    sput p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->iRemoconPort:I

    .line 31
    return-void
.end method

.method public static storageTypeOfFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "absolutepath"

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "external_sd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 60
    const-string v1, "sdcard"

    .line 62
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "external_sd"

    goto :goto_0
.end method
