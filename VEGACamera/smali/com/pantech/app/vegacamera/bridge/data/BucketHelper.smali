.class Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String; = "1) GROUP BY (1"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_NAME:I = 0x2

.field private static final INDEX_DATE_TAKEN:I = 0x1

.field private static final INDEX_MEDIA_TYPE:I = 0x1

.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null

.field private static final PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BucketHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "media_type"

    aput-object v1, v0, v3

    .line 46
    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    .line 45
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "MAX(datetaken)"

    aput-object v1, v0, v3

    .line 75
    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    .line 74
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 2
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 189
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_1

    .line 190
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 197
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    .line 191
    goto :goto_0

    .line 193
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0       #result:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 195
    goto :goto_0

    .line 196
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-nez v0, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "tableUri"
    .parameter "bucketId"

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 171
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 178
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 180
    :goto_0
    return-object v5

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 179
    throw v0

    .line 178
    :cond_0
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private static getFilesContentUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 185
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static loadBucketEntries(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    .locals 1
    .parameter "jc"
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 85
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->loadBucketEntriesFromFilesTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadBucketEntriesFromFilesTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    .locals 12
    .parameter "jc"
    .parameter "resolver"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 137
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const-string v5, "MAX(datetaken) DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 141
    const-string v0, "BucketHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot open local database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-array v4, v10, [Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    .line 166
    :goto_0
    return-object v4

    .line 144
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v6, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;>;"
    const/4 v9, 0x0

    .line 146
    .local v9, typeBits:I
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 147
    or-int/lit8 v9, v9, 0x2

    .line 149
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 150
    or-int/lit8 v9, v9, 0x8

    .line 153
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 164
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 166
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    move-object v4, v0

    goto :goto_0

    .line 154
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    shl-int v0, v11, v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_4

    .line 155
    new-instance v8, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 156
    .local v8, entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v8           #entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    :cond_4
    invoke-interface {p0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 165
    throw v0
.end method

.method private static loadBucketEntriesFromImagesAndVideoTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    .locals 4
    .parameter "jc"
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 119
    .local v0, buckets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;>;"
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v2, v0}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->updateBucketEntriesFromTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 122
    :cond_0
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_1

    .line 123
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v2, v0}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->updateBucketEntriesFromTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    .line 126
    .local v1, entries:[Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$1;

    invoke-direct {v2}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 133
    return-object v1
.end method

.method private static updateBucketEntriesFromTable(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 10
    .parameter "jc"
    .parameter "resolver"
    .parameter "tableUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, buckets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;>;"
    const/4 v4, 0x0

    .line 94
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (1"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 96
    const-string v0, "BucketHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot open media database: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 102
    .local v6, bucketId:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 103
    .local v8, dateTaken:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    .line 104
    .local v9, entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    if-nez v9, :cond_2

    .line 105
    new-instance v9, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;

    .end local v9           #entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v6, v0}, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 106
    .restart local v9       #entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput v8, v9, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->dateTaken:I

    .line 100
    .end local v6           #bucketId:I
    .end local v8           #dateTaken:I
    .end local v9           #entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 109
    .restart local v6       #bucketId:I
    .restart local v8       #dateTaken:I
    .restart local v9       #entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    :cond_2
    :try_start_1
    iget v0, v9, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->dateTaken:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;->dateTaken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 112
    .end local v6           #bucketId:I
    .end local v8           #dateTaken:I
    .end local v9           #entry:Lcom/pantech/app/vegacamera/bridge/data/BucketHelper$BucketEntry;
    :catchall_0
    move-exception v0

    .line 113
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 114
    throw v0
.end method
