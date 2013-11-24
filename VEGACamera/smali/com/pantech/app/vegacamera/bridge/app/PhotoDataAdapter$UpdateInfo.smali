.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public contentEnd:I

.field public contentStart:I

.field public indexHint:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public reloadContent:Z

.field public size:I

.field public target:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;-><init>()V

    return-void
.end method
