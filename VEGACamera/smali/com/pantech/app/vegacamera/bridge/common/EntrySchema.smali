.class public final Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String; = null

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 40
    const-string v2, "NONE"

    aput-object v2, v0, v1

    .line 39
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pantech/app/vegacamera/bridge/common/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/pantech/app/vegacamera/bridge/common/Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 52
    .local v1, columns:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    .line 56
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 57
    .local v4, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, hasFullTextIndex:Z
    if-eqz v1, :cond_0

    .line 59
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 60
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ne v3, v5, :cond_1

    .line 68
    .end local v3           #i:I
    :cond_0
    iput-object v4, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mHasFullTextIndex:Z

    .line 70
    return-void

    .line 61
    .restart local v3       #i:I
    :cond_1
    aget-object v0, v1, v3

    .line 62
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 63
    iget-boolean v5, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_2

    .line 64
    const/4 v2, 0x1

    .line 60
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 467
    .local v10, fields:[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, v10

    if-ne v11, v0, :cond_0

    .line 502
    return-void

    .line 469
    :cond_0
    aget-object v7, v10, v11

    .line 470
    .local v7, field:Ljava/lang/reflect/Field;
    const-class v0, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;

    invoke-interface {v7, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;

    .line 471
    .local v12, info:Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;
    if-nez v12, :cond_1

    .line 467
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 477
    .local v9, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-ne v9, v0, :cond_2

    .line 478
    const/4 v2, 0x0

    .line 498
    .local v2, type:I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 499
    .local v8, index:I
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    invoke-interface {v12}, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v12}, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;->unique()Z

    move-result v4

    invoke-interface {v12}, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;->fullText()Z

    move-result v5

    invoke-interface {v12}, Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v6

    .line 500
    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    .line 499
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    .end local v2           #type:I
    .end local v8           #index:I
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_3

    .line 480
    const/4 v2, 0x1

    .line 481
    .restart local v2       #type:I
    goto :goto_2

    .end local v2           #type:I
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_4

    .line 482
    const/4 v2, 0x2

    .line 483
    .restart local v2       #type:I
    goto :goto_2

    .end local v2           #type:I
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_5

    .line 484
    const/4 v2, 0x3

    .line 485
    .restart local v2       #type:I
    goto :goto_2

    .end local v2           #type:I
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_6

    .line 486
    const/4 v2, 0x4

    .line 487
    .restart local v2       #type:I
    goto :goto_2

    .end local v2           #type:I
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_7

    .line 488
    const/4 v2, 0x5

    .line 489
    .restart local v2       #type:I
    goto :goto_2

    .end local v2           #type:I
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_8

    .line 490
    const/4 v2, 0x6

    .line 491
    .restart local v2       #type:I
    goto :goto_2

    .end local v2           #type:I
    :cond_8
    const-class v0, [B

    if-ne v9, v0, :cond_9

    .line 492
    const/4 v2, 0x7

    .line 493
    .restart local v2       #type:I
    goto :goto_2

    .line 494
    .end local v2           #type:I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported field type for column: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v1, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;>;"
    :goto_0
    if-nez p1, :cond_0

    .line 459
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    .line 460
    .local v0, columnList:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 461
    return-object v0

    .line 454
    .end local v0           #columnList:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 455
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v1, Lcom/pantech/app/vegacamera/bridge/common/Entry$Table;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/common/Entry$Table;

    .line 443
    .local v0, table:Lcom/pantech/app/vegacamera/bridge/common/Entry$Table;
    if-nez v0, :cond_0

    .line 444
    const/4 v1, 0x0

    .line 448
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "field"
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 141
    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    .line 288
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 289
    .local v6, tableName:Ljava/lang/String;
    if-eqz v6, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "CREATE TABLE "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v5, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v8, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v7, unique:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v10, :cond_3

    .line 315
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 316
    const-string v8, ",UNIQUE("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    const-string v8, ");"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 320
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 323
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_7

    .line 340
    iget-boolean v8, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v8, :cond_1

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_fulltext"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, ftsTableName:Ljava/lang/String;
    const-string v8, "CREATE VIRTUAL TABLE "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v8, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_3
    if-lt v8, v10, :cond_9

    .line 355
    const-string v8, ");"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 357
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "INSERT OR REPLACE INTO "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .local v3, insertSql:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v8, " (_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_4
    if-lt v8, v10, :cond_b

    .line 370
    const-string v8, ") VALUES (new._id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_5
    if-lt v8, v10, :cond_d

    .line 377
    const-string v8, ");"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, insertSqlString:Ljava/lang/String;
    const-string v8, "CREATE TRIGGER "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v8, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v8, " FOR EACH ROW BEGIN "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v8, "END;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 389
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    const-string v8, "CREATE TRIGGER "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v8, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v8, " FOR EACH ROW BEGIN "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v8, "END;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 400
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    const-string v8, "CREATE TRIGGER "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v8, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v8, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v8, " WHERE _id = old._id; END;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 411
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 413
    .end local v2           #ftsTableName:Ljava/lang/String;
    .end local v3           #insertSql:Ljava/lang/StringBuilder;
    .end local v4           #insertSqlString:Ljava/lang/String;
    :cond_1
    return-void

    .line 289
    .end local v5           #sql:Ljava/lang/StringBuilder;
    .end local v7           #unique:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 296
    .restart local v5       #sql:Ljava/lang/StringBuilder;
    .restart local v7       #unique:Ljava/lang/StringBuilder;
    :cond_3
    aget-object v0, v9, v8

    .line 297
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v11

    if-nez v11, :cond_5

    .line 298
    const/16 v11, 0x2c

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/16 v11, 0x20

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    sget-object v11, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v12, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->type:I

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 303
    const-string v11, " DEFAULT "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_4
    iget-boolean v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->unique:Z

    if-eqz v11, :cond_5

    .line 307
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 308
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_5
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 310
    :cond_6
    const/16 v11, 0x2c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 323
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    :cond_7
    aget-object v0, v9, v8

    .line 325
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v11, :cond_8

    .line 326
    const-string v11, "CREATE INDEX "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v11, "_index_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v11, " ON "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v11, " ("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v11, ");"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 336
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 323
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 346
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .restart local v2       #ftsTableName:Ljava/lang/String;
    :cond_9
    aget-object v0, v9, v8

    .line 347
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_a

    .line 349
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 350
    .local v1, columnName:Ljava/lang/String;
    const/16 v11, 0x2c

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v11, " TEXT"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .end local v1           #columnName:Ljava/lang/String;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 364
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .restart local v3       #insertSql:Ljava/lang/StringBuilder;
    :cond_b
    aget-object v0, v9, v8

    .line 365
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_c

    .line 366
    const/16 v11, 0x2c

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 371
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    :cond_d
    aget-object v0, v9, v8

    .line 372
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_e

    .line 373
    const-string v11, ",new."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/pantech/app/vegacamera/bridge/common/Entry;)Lcom/pantech/app/vegacamera/bridge/common/Entry;
    .locals 13
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/pantech/app/vegacamera/bridge/common/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, object:Lcom/pantech/app/vegacamera/bridge/common/Entry;,"TT;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 104
    :try_start_0
    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v10, v9

    move v8, v7

    :goto_0
    if-lt v8, v10, :cond_0

    .line 134
    return-object p2

    .line 104
    :cond_0
    aget-object v0, v9, v8

    .line 105
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 106
    .local v1, columnIndex:I
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 107
    .local v3, field:Ljava/lang/reflect/Field;
    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v4, :pswitch_data_0

    .line 104
    :goto_1
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_2
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .end local v1           #columnIndex:I
    .end local v3           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 109
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .restart local v1       #columnIndex:I
    .restart local v3       #field:Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 112
    :pswitch_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-ne v4, v6, :cond_2

    move v4, v6

    :goto_3
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_3

    .line 115
    :pswitch_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_1

    .line 118
    :pswitch_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 121
    :pswitch_4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v3, p2, v11, v12}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 124
    :pswitch_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 127
    :pswitch_6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    invoke-virtual {v3, p2, v11, v12}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 130
    :pswitch_7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v5

    :goto_4
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_4

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, sql:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 283
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/16 v3, 0x3b

    .line 416
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 417
    .local v1, tableName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 421
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 423
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_0

    .line 424
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .locals 2
    .parameter "columnName"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "columnName"

    .prologue
    .line 85
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 90
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 85
    :cond_0
    aget-object v0, v2, v1

    .line 86
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->projectionIndex:I

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getColumnInfo()[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/pantech/app/vegacamera/bridge/common/Entry;)J
    .locals 7
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 272
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->objectToValues(Lcom/pantech/app/vegacamera/bridge/common/Entry;Landroid/content/ContentValues;)V

    .line 274
    iget-wide v3, p2, Lcom/pantech/app/vegacamera/bridge/common/Entry;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 275
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 278
    .local v0, id:J
    iput-wide v0, p2, Lcom/pantech/app/vegacamera/bridge/common/Entry;->id:J

    .line 279
    return-wide v0
.end method

.method public objectToValues(Lcom/pantech/app/vegacamera/bridge/common/Entry;Landroid/content/ContentValues;)V
    .locals 10
    .parameter "object"
    .parameter "values"

    .prologue
    .line 187
    :try_start_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_0

    .line 220
    return-void

    .line 187
    :cond_0
    aget-object v0, v6, v5

    .line 188
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 189
    .local v1, columnName:Ljava/lang/String;
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 190
    .local v3, field:Ljava/lang/reflect/Field;
    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v4, :pswitch_data_0

    .line 187
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 217
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 195
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .restart local v1       #columnName:Ljava/lang/String;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    :pswitch_1
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 201
    :pswitch_3
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 204
    :pswitch_4
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 207
    :pswitch_5
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 210
    :pswitch_6
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 213
    :pswitch_7
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/pantech/app/vegacamera/bridge/common/Entry;)Z
    .locals 10
    .parameter "db"
    .parameter "id"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mProjection:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 262
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 263
    .local v9, success:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, v8, p4}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/pantech/app/vegacamera/bridge/common/Entry;)Lcom/pantech/app/vegacamera/bridge/common/Entry;

    .line 265
    const/4 v9, 0x1

    .line 267
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 268
    return v9
.end method

.method public toDebugString(Lcom/pantech/app/vegacamera/bridge/common/Entry;)Ljava/lang/String;
    .locals 11
    .parameter "entry"

    .prologue
    .line 224
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v6, "ID="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/pantech/app/vegacamera/bridge/common/Entry;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v9, v8

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v9, :cond_0

    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 226
    :cond_0
    aget-object v0, v8, v7

    .line 227
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 228
    .local v1, columnName:Ljava/lang/String;
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 229
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 230
    .local v5, value:Ljava/lang/Object;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v5, :cond_1

    const-string v6, "null"

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 233
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #value:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public varargs toDebugString(Lcom/pantech/app/vegacamera/bridge/common/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "entry"
    .parameter "columnNames"

    .prologue
    .line 240
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v6, "ID="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/pantech/app/vegacamera/bridge/common/Entry;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    array-length v8, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_0

    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 242
    :cond_0
    aget-object v1, p2, v7

    .line 243
    .local v1, columnName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    move-result-object v0

    .line 244
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    if-eqz v0, :cond_1

    .line 245
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 246
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 247
    .local v5, value:Ljava/lang/Object;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v5, :cond_2

    const-string v6, "null"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v5           #value:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 247
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 251
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #value:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lcom/pantech/app/vegacamera/bridge/common/Entry;)Lcom/pantech/app/vegacamera/bridge/common/Entry;
    .locals 8
    .parameter "values"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/pantech/app/vegacamera/bridge/common/Entry;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, object:Lcom/pantech/app/vegacamera/bridge/common/Entry;,"TT;"
    :try_start_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->mColumnInfo:[Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 179
    return-object p2

    .line 149
    :cond_0
    aget-object v0, v5, v4

    .line 150
    .local v0, column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 151
    .local v1, columnName:Ljava/lang/String;
    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 152
    .local v3, field:Ljava/lang/reflect/Field;
    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 149
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    .end local v0           #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 157
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #column:Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
    .restart local v1       #columnName:Ljava/lang/String;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    :pswitch_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 169
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    :pswitch_7
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v3, p2, v7}, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
