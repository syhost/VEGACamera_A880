.class final Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "download.db"

.field public static final DATABASE_VERSION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DatabaseHelper;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    .line 223
    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 224
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 228
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/DownloadEntry;->SCHEMA:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 230
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DatabaseHelper;->this$0:Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;->access$0(Lcom/pantech/app/vegacamera/bridge/data/DownloadCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 231
    .local v1, tempFile:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 232
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 238
    :cond_0
    return-void

    .line 232
    :cond_1
    aget-object v0, v1, v2

    .line 233
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    const-string v4, "DownloadCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fail to remove: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 243
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/DownloadEntry;->SCHEMA:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DownloadCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 245
    return-void
.end method
