.class public Lcom/pantech/app/vegacamera/remoteshot/FileControl;
.super Ljava/lang/Object;
.source "FileControl.java"


# static fields
.field private static IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FileDao"

.field private static VIDEO_PROJECTION:[Ljava/lang/String;

.field private static cCamcoder:Landroid/database/Cursor;

.field private static cCamera:Landroid/database/Cursor;

.field private static camcoderWhere:Ljava/lang/String;

.field private static cameraWhere:Ljava/lang/String;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static sStorageURI:Landroid/net/Uri;

.field private static sVideoStorageURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sStorageURI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sVideoStorageURI:Landroid/net/Uri;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    .line 21
    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    .line 20
    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    .line 24
    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string v1, "description"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 25
    const-string v2, "resolution"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cameraWhere:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->camcoderWhere:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CamcoderCur(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 84
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 90
    sput-object p0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->mResolver:Landroid/content/ContentResolver;

    .line 94
    :cond_1
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sVideoStorageURI:Landroid/net/Uri;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->VIDEO_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->camcoderWhere:Ljava/lang/String;

    const-string v3, "_id DESC"

    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    .line 97
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static CameraCur(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 60
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 66
    sput-object p0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->mResolver:Landroid/content/ContentResolver;

    .line 70
    :cond_1
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sStorageURI:Landroid/net/Uri;

    sget-object v1, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->IMAGE_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cameraWhere:Ljava/lang/String;

    const-string v3, "_id DESC"

    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    .line 72
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_2
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static caDelelte(I)Z
    .locals 6
    .parameter "index"

    .prologue
    .line 313
    const-string v2, "FileDao"

    const-string v3, "caDelelte"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :try_start_0
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v2, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 316
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sStorageURI:Landroid/net/Uri;

    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 317
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    .line 318
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    :cond_0
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FileDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "caDelelte e "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static closeCurser()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v0, "FileDao"

    const-string v1, "closeCurser"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_1
    sput-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    .line 43
    sput-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    .line 44
    return-void
.end method

.method public static getCamcoderID(I)J
    .locals 7
    .parameter "num"

    .prologue
    .line 246
    const-wide/16 v1, 0x0

    .line 248
    .local v1, id:J
    :try_start_0
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v4, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    .line 249
    .local v3, is:Z
    if-eqz v3, :cond_0

    .line 250
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :cond_0
    move-wide v4, v1

    .line 256
    .end local v3           #is:Z
    :goto_0
    return-wide v4

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FileDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCamcoderUri e "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getCamcoderName(I)Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    const/4 v5, 0x0

    .line 193
    const/4 v3, 0x0

    .line 195
    .local v3, name:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v6, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 197
    .local v1, is:Z
    if-eqz v1, :cond_1

    .line 198
    sget-object v6, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    sget-object v7, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 212
    .end local v1           #is:Z
    .end local v4           #path:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 202
    .restart local v1       #is:Z
    .restart local v4       #path:Ljava/lang/String;
    :cond_0
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 203
    .local v2, last:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 204
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 205
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 211
    .end local v2           #last:I
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    const-string v5, "FileDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getCamcoderName "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    .line 212
    goto :goto_0

    .line 207
    .end local v1           #is:Z
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "FileDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getCamcoderName e "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCamcoderPath(I)Ljava/lang/String;
    .locals 8
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 166
    :cond_0
    :goto_0
    return-object v3

    .line 148
    :cond_1
    const/4 v3, 0x0

    .line 150
    .local v3, path:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v5, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 151
    .local v2, is:Z
    if-eqz v2, :cond_2

    .line 152
    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    sget-object v6, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 161
    goto :goto_0

    .line 154
    .end local v1           #file:Ljava/io/File;
    .end local v2           #is:Z
    :catch_0
    move-exception v0

    .local v0, e:Landroid/database/sqlite/SQLiteException;
    move-object v3, v4

    .line 155
    goto :goto_0

    .line 163
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #is:Z
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getCamcoderResolution(I)Ljava/lang/String;
    .locals 6
    .parameter "num"

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, resolution:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v3, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 111
    .local v1, is:Z
    if-eqz v1, :cond_0

    .line 112
    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    const-string v5, "resolution"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    :cond_0
    const-string v3, "FileDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resolution "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 119
    .end local v1           #is:Z
    :goto_0
    return-object v3

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "FileDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CamcoderCur e "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCamcoderType(I)Ljava/lang/String;
    .locals 6
    .parameter "num"

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, type:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v3, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 234
    .local v1, is:Z
    if-eqz v1, :cond_0

    .line 235
    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 241
    :cond_0
    const-string v3, "FileDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCamcoderType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 242
    .end local v1           #is:Z
    :goto_0
    return-object v3

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FileDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCamcoderType e "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCamcoderUri(I)Landroid/net/Uri;
    .locals 7
    .parameter "num"

    .prologue
    .line 275
    const/4 v3, 0x0

    .line 277
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v4, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 278
    .local v2, is:Z
    if-eqz v2, :cond_0

    .line 279
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, id:Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sVideoStorageURI:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1           #id:Ljava/lang/String;
    :cond_0
    move-object v4, v3

    .line 286
    .end local v2           #is:Z
    :goto_0
    return-object v4

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FileDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCamcoderUri e "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getCamcoderlength()I
    .locals 5

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, count:I
    :try_start_0
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamcoder:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    .end local v0           #count:I
    :goto_0
    return v0

    .line 304
    .restart local v0       #count:I
    :catch_0
    move-exception v1

    .line 305
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FileDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCamcoderlength e "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCameraName(I)Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v3, 0x0

    .line 172
    .local v3, name:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v6, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 174
    .local v1, is:Z
    if-eqz v1, :cond_1

    .line 175
    sget-object v6, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    sget-object v7, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 189
    .end local v1           #is:Z
    .end local v4           #path:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 179
    .restart local v1       #is:Z
    .restart local v4       #path:Ljava/lang/String;
    :cond_0
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 180
    .local v2, last:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 188
    .end local v2           #last:I
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    const-string v5, "FileDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getCameraName "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    .line 189
    goto :goto_0

    .line 184
    .end local v1           #is:Z
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "FileDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getCameraName e "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCameraPath(I)Ljava/lang/String;
    .locals 8
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 123
    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 142
    :cond_0
    :goto_0
    return-object v3

    .line 125
    :cond_1
    const/4 v3, 0x0

    .line 127
    .local v3, path:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v5, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 128
    .local v2, is:Z
    if-eqz v2, :cond_2

    .line 129
    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    sget-object v6, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 135
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 137
    goto :goto_0

    .line 131
    .end local v1           #file:Ljava/io/File;
    .end local v2           #is:Z
    :catch_0
    move-exception v0

    .local v0, e:Landroid/database/sqlite/SQLiteException;
    move-object v3, v4

    .line 132
    goto :goto_0

    .line 139
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #is:Z
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getCameraType(I)Ljava/lang/String;
    .locals 6
    .parameter "num"

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 218
    .local v2, type:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v3, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 219
    .local v1, is:Z
    if-eqz v1, :cond_0

    .line 220
    sget-object v3, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 226
    :cond_0
    const-string v3, "FileDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCameraType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 227
    .end local v1           #is:Z
    :goto_0
    return-object v3

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FileDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCameraType e "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCameraUri(I)Landroid/net/Uri;
    .locals 7
    .parameter "num"

    .prologue
    .line 260
    const/4 v3, 0x0

    .line 262
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v4, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 263
    .local v2, is:Z
    if-eqz v2, :cond_0

    .line 264
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    sget-object v5, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, id:Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->sStorageURI:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1           #id:Ljava/lang/String;
    :cond_0
    move-object v4, v3

    .line 271
    .end local v2           #is:Z
    :goto_0
    return-object v4

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FileDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCameraUri e "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getCameralength()I
    .locals 5

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, count:I
    :try_start_0
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cCamera:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 297
    .end local v0           #count:I
    :goto_0
    return v0

    .line 293
    .restart local v0       #count:I
    :catch_0
    move-exception v1

    .line 294
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FileDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCameralength e "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCamcoderWhere(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data Like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->camcoderWhere:Ljava/lang/String;

    .line 54
    const-string v0, "FileDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCamcoderWhere"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->camcoderWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "FileDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCamcoderWhere"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static setCameraWhere(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data Like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/remoteshot/FileControl;->cameraWhere:Ljava/lang/String;

    .line 49
    return-void
.end method
