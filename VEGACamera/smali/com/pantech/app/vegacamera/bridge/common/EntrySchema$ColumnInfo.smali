.class public final Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/common/EntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "_id"


# instance fields
.field public final defaultValue:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final fullText:Z

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final projectionIndex:I

.field public final type:I

.field public final unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "indexed"
    .parameter "unique"
    .parameter "fullText"
    .parameter "defaultValue"
    .parameter "field"
    .parameter "projectionIndex"

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 519
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->type:I

    .line 520
    iput-boolean p3, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->indexed:Z

    .line 521
    iput-boolean p4, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->unique:Z

    .line 522
    iput-boolean p5, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->fullText:Z

    .line 523
    iput-object p6, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    .line 524
    iput-object p7, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 525
    iput p8, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    return-void
.end method


# virtual methods
.method public isId()Z
    .locals 2

    .prologue
    .line 531
    const-string v0, "_id"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
