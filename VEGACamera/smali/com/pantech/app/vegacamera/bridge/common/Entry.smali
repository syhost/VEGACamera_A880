.class public abstract Lcom/pantech/app/vegacamera/bridge/common/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;,
        Lcom/pantech/app/vegacamera/bridge/common/Entry$Columns;,
        Lcom/pantech/app/vegacamera/bridge/common/Entry$Table;
    }
.end annotation


# static fields
.field public static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public id:J
    .annotation runtime Lcom/pantech/app/vegacamera/bridge/common/Entry$Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/common/Entry;->id:J

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/common/Entry;->id:J

    .line 57
    return-void
.end method
